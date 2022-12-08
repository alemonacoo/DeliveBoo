<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    //
     protected $fillable = ['name', 'description', 'slug', 'price', 'image', 'visibility', 'menu_id'];

    public function user(){
        return $this->belongsTo('App\Restaurant');
    }
}
