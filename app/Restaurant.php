<?php

namespace App;

use App\Category;
use Illuminate\Database\Eloquent\Model;

class Restaurant extends Model
{
    //
    protected $fillable = ['name', 'p_iva', 'slug', 'address', 'image', 'user_id'];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function order()
    {
        return $this->hasManyThrough(Order::class, Menu::class);
    }

    public function category()
    {
        return $this->belongstoMany(Category::class, 'categories_restaurants', 'restaurant_id', 'category_id');
    }
}
