<?php

namespace App;

use App\Menu;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    protected $fillable = ['total', 'address'];

    public function menu()
    {
        return $this->belongsToMany(Menu::class, 'orders_menus', 'order_id', 'menu_id');
    }
}
