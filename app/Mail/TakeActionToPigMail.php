<?php

namespace App\Mail;

use App\Childbirth;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class TakeActionToPigMail extends Mailable
{
    use Queueable, SerializesModels;

    public $childbirth;
    public $model;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Childbirth $childbirth, Model $model)
    {
        $this->childbirth = $childbirth;
        $this->model = $model;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('childbirds.action');
    }
}
