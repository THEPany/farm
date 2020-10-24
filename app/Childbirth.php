<?php

namespace App;

use Carbon\CarbonImmutable;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class Childbirth extends Model
{
    public function getChildbirthAtBrowseAttribute()
    {
        return $this->childbirthAt()->isoFormat('LLLL');
    }

    public function getChildbirthAtReadAttribute()
    {
        return $this->childbirthAt()->isoFormat('LLLL');
    }

    public function childbirthAt()
    {
        return CarbonImmutable::parse($this->childbirth_at)->addDays(static::pregnancyDays());
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
