<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    protected $fillable = ['total', 'address', 'date_time'];

    // public function menu(){
    //     return $this->
    // }
}