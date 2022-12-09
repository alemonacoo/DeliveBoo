<?php

namespace App;

use App\Restaurant;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //
    public function restaurant(){
        return $this->belongstoMany(Restaurant::class, 'categories_restaurants', 'category_id', 'restaurant_id');
    }
}
