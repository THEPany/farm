<?php

namespace App\Widgets;

use App\Food;
use TCG\Voyager\Widgets\BaseDimmer;

class FoodDimmer extends BaseDimmer
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
        $count = Food::count();
        $string = $count > 1 ? 'Alimentos' : 'Alimento';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-hotdog',
            'title'  => "{$count} {$string}",
            'text'   => "Tienes {$count} {$string} en tu base de datos. Haga clic en el botón de abajo para ver {$string}. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;",
            'button' => [
                'text' => "Ver todos los {$string}",
                'link' => route('voyager.foods.index'),
            ],
            'image' => asset('assets/images/widget-backgrounds/food.jpg'),
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
