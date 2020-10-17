<?php

namespace App\Widgets;

use App\Vaccination;
use TCG\Voyager\Widgets\BaseDimmer;

class VaccinationDimmer extends BaseDimmer
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
        $count = Vaccination::count();
        $string = $count > 1 ? 'Vacunas y acciones' : 'Vacuna y accion';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-lab',
            'title'  => "{$count} {$string}",
            'text'   => "Tienes {$count} {$string} en tu base de datos. Haga clic en el botón de abajo para ver todos los {$string}.",
            'button' => [
                'text' => "Ver todos los {$string}",
                'link' => route('voyager.childbirths.index'),
            ],
            'image' => asset('assets/images/widget-backgrounds/vaccinations.jpg'),
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
