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

    public function hasNotBorn($query)
    {
        return $query->whereRaw('childbirth_at + interval '. static::pregnancyDays() .' day >= ?', [today()]);
    }

    public function hasBorn($query)
    {
        return $query->whereRaw('childbirth_at + interval '. static::pregnancyDays() .' day < ?', [today()]);
    }

    public function separateFromMother($query)
    {
        return $query->whereRaw('childbirth_at + interval '. static::pregnancyDays()  + static::separateFromMotherDays().' day < ?', [today()]);
    }

    public function forSales($query)
    {
        return $query->whereRaw('childbirth_at + interval '. static::pregnancyDays() + static::separateFromMotherDays() + static::forSalesDays() .' day < ?', [today()]);
    }

    public static function pregnancyDays()
    {
        return (int) Voyager::setting('admin.pregnancy_days');
    }

    public static function separateFromMotherDays()
    {
        return (int) Voyager::setting('admin.separates_from_mother_days');
    }

    public static function forSalesDays()
    {
        return (int) Voyager::setting('admin.acts_for_sale');
    }
}
