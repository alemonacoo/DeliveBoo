<?php

use Illuminate\Database\Seeder;
use App\Order;

require 'App/Utilities/slug.php';


class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for ($i = 1; $i <= 10; $i++) {
            $order = new Order();
            $order->total = rand(100, 1000) / 10;
            $order->address = 'Via dei Cento n.' . $i;
            $order->save();
        }
    }
}
