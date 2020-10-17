<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class Childbirth extends Model
{
    public function getChildbirthAtBrowseAttribute()
    {
        return $this->childbirthAt($this->childbirth_at);
    }

    public function getChildbirthAtReadAttribute()
    {
        return $this->childbirthAt($this->childbirth_at);
    }

    public function childbirthAt($date)
    {
        return Carbon::parse($date)->addDays(static::pregnancyDays())->isoFormat('LLLL');
    }

    public function vaccinations()
    {
        return $this->belongsToMany(Vaccination::class, 'childbirth_vaccinations');
    }

    public function foods()
    {
        return $this->belongsToMany(Food::class, 'childbirth_foods');
    }

    public function scopeFirstStage($query)
    {
        return $query->whereRaw('childbirth_at + interval '. static::pregnancyDays() .' day >= ?', [today()]);
    }

    public function scopeSecondStage($query)
    {
        return $query->whereRaw('childbirth_at + interval '. static::pregnancyDays() .' day < ?', [today()]);
    }

    public static function pregnancyDays()
    {
        return (int) Voyager::setting('admin.pregnancy_days');
    }
}
