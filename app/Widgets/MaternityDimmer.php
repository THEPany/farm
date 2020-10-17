<?php

namespace App\Widgets;

use App\Childbirth;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class MaternityDimmer extends BaseDimmer
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
        $count = Childbirth::whereStatus(1)->count();
        $string = 'Camadas en maternidad';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-paw',
            'title'  => "{$count} {$string}",
            'text'   => "Tienes {$count} {$string} en tu base de datos. Haga clic en el botón de abajo para ver todas las {$string}.",
            'button' => [
                'text' => "Ver todas las {$string}",
                'link' => route('voyager.childbirths.index', 'key=status&filter=equals&s=1'),
            ],
            'image' => asset('assets/images/widget-backgrounds/sow.jpg'),
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
