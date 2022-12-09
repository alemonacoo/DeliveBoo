<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignMenusRestaurantTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
         Schema::table('menus', function (Blueprint $table) {
            $table->string('restaurant_slug')->nullable()->after('slug');
            $table->foreign('restaurant_slug')->references('slug')->on('restaurants')->onDelete('set null');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
         Schema::table('menus', function (Blueprint $table) {
            $table->dropColumn('restaurant_slug');
            $table->dropForeign('menus_restaurant_slug_foreign');
        });
    }
}
