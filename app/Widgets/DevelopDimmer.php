<?php

namespace App\Widgets;

use App\Childbirth;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class DevelopDimmer extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Childbirth::whereStatus(2)->count();
        $string = 'Camadas en desarrollo';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-paw',
            'title'  => "{$count} {$string}",
            'text'   => "Tienes {$count} {$string} en tu base de datos. Haga clic en el botón de abajo para ver tidas las {$string}.",
            'button' => [
                'text' => "Ver todas {$string}",
                'link' => route('voyager.childbirths.index', 'key=status&filter=equals&s=2'),
            ],
            'image' => asset('assets/images/widget-backgrounds/pigs.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return true;
    }
}
