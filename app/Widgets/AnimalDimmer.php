<?php

namespace App\Widgets;

use App\Animal;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class AnimalDimmer extends BaseDimmer
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
        $count = Animal::count();
        $string = $count > 1 ? 'Animales' : 'Animal';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-paw',
            'title'  => "{$count} {$string}",
            'text'   => "Tienes {$count} {$string} en tu base de datos. Haga clic en el botón de abajo para ver todos los animales.",
            'button' => [
                'text' => 'Ver todos los animales',
                'link' => route('voyager.animals.index'),
            ],
            'image' => asset('assets/images/widget-backgrounds/farm.jpg'),
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
