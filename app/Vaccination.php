<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vaccination extends Model
{
    public function childbirths()
    {
        return $this->belongsToMany(Childbirth::class, 'childbirth_vaccinations');
    }
}
