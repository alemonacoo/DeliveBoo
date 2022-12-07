<?php

use Illuminate\Database\Seeder;
use App\Menu;
require 'App/Utilities/slug.php';

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for($i = 0; $i<=10; $i++){
            $menu = new Menu();
            $menu->name = 'Il vecchio frantoio' . $i;

        }

    }
}
