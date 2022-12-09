<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    //
     protected $fillable = ['name', 'description', 'slug', 'price', 'image', 'visibility', 'restaurant_id'];

    public function restaurant(){
        return $this->belongsTo('App\Restaurant');
    }
}
