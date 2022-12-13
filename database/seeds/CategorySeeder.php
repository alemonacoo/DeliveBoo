<?php

use App\Category;
use Illuminate\Database\Seeder;
require 'App/Utilities/slug.php';


class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $categories = ['Vegetariano', 'Messicano', 'Cinese', 'Indiano', 'Greco', 'Giapponese', 'Italiano', 'Thai', 'Pizza', 'Americano'];

        for($i = 0; $i < count($categories); $i++){
            $category = new Category();
            $category->name = $categories[$i];
            $category->slug = getSlugForTable($category->name, 'categories');
            $category->save();
        }

    }
}
