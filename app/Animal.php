<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Animal extends Model
{
    public function getBirthDayAtBrowseAttribute()
    {
        return $this->ageInWeeks($this->birthday_at);
    }

    public function getBirthDayAtReadAttribute()
    {
        return $this->ageInWeeks($this->birthday_at);
    }

    public function ageInWeeks($date)
    {
        return transform(Carbon::parse($date)->diffInWeeks(today()), 
            fn ($weeks) => $weeks > 1 ? $weeks . ' Semanas' : $weeks . ' Semana');
    }
}
