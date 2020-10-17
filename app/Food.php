<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
    protected $table = 'foods';

    public function childbirths()
    {
        return $this->belongsToMany(Childbirth::class, 'childbirth_vaccinations');
    }
}
