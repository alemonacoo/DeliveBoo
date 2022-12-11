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
$names1 = ["Spaghetti allo scoglio", "Pasta alla carbonara", "Salmon Salad", "Chicken Salad", "Acqua", "Coca cola", "Birra artigianale", "Pennete panna e salmone", "Taco Salad", "Pasta Salad"];




        $ingred1 = [
            "Spaghetti, gamberi, cozze, arsele, pomodoro",
            "Spaghetti, guanciale, uova, pecorino, sale, pepe",
            "Salmone marinato, Menta, Avocado, Mango, Edamame, Germogli di soia",
            "Pollo, pomodori, mais, mozzarella",
            "Acqua",
            "Acqua, Anidride carbonica, Zucchero, Aromi naturali, Caffeina",
            "Malto d'orzo, luppolo, lievito, acqua",
            "Pennete, panna, salmone, erba cipollina",
            "Carne lessa, pomodori ciliegini, lattuga romana, avocado",
            "Fusilli, pomodori, peperoni rossi, pomodori, basilico, olio extra vergine d'oliva",
        ];



        for($i = 0; $i<10; $i++){
            $menu = new Menu();
            $menu->name = $names1[$i];
            $menu->description = $ingred1[$i];
            $menu->price = number_format(rand(100, 1000) / 100, 2);
            $menu->slug = getSlugForTable($menu->name, 'menus');
            $menu->save();


        }

    }
}
