<?php

namespace App\Console\Commands;

use App\Childbirth;
use Illuminate\Console\Command;

class ChangeStatusToGrowth extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'change-status:growth';

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
        Childbirth::query()
            ->separateFromMother()
            ->get()
            ->each(fn ($item) => $item->update(['status' => 3]));
    }
}
