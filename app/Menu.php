<?php

namespace App;

use App\Order;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    //
    protected $fillable = ['name', 'description', 'slug', 'price', 'image', 'visibility', 'restaurant_slug'];

    public function restaurant()
    {
        return $this->belongsTo('App\Restaurant');
    }

    public function order()
    {
        return $this->belongsToMany(Order::class, 'menu_order', 'menu_id', 'order_id');
    }
}
