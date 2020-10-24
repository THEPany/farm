<?php

namespace App\Console\Commands;

use App\Food;
use App\Childbirth;
use App\Mail\TakeActionToPigMail;
use App\User;
use App\Vaccination;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class NotifywhenNeedToTakeAction extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'notify:need-take-action';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $vaccinations = Vaccination::all();
        $foods = Food::all();

        Childbirth::with('vaccinations', 'foods')
            ->has('vaccinations')
            ->get()
            ->each(function ($child) use ($vaccinations, $foods) {
                $this->prepareToSendMail($child,
                    $foods->whereIn('id', $foods->pluck('id')->diff($child->foods->pluck('id')))
                );

               $this->prepareToSendMail($child,
                   $vaccinations->whereIn('id', $vaccinations->pluck('id')->diff($child->vaccinations->pluck('id')))
               );
            });
    }

    protected function prepareToSendMail(Childbirth $model, $items)
    {
        $items->each(function ($item) use ($model) {
            if (now()->greaterThanOrEqualTo($model->childbirthAt()->addDays($item->apply_after))) {
                Mail::to(User::all())->queue(new TakeActionToPigMail($model, $item));
            }
        });
    }
}
