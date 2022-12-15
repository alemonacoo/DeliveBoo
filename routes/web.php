<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', function () {
    return view('guest.home');
});

Route::middleware('auth')
    ->namespace('Admin')
    ->name('admin.')
    ->prefix('admin')
    ->group(function () {
        Route::get('/', 'HomeController@index')->name('index');
        Route::resource('restaurants', 'RestaurantController')->parameters(['restaurants' => 'restaurant:slug']);
        Route::resource('categories', 'CategoryController')->parameters(['categories' => 'category:slug']);
        // Route::resource('tags', 'TagController')->parameters(['tags' => 'tag:slug']);
        Route::resource('restaurants.menus', 'MenuController')->parameters(['restaurants' => 'restaurant:slug', 'menus' => 'menu:slug']);
        Route::resource('restaurants.orders', 'OrderController')->parameters(['restaurants' => 'restaurant:slug']);
        Route::get('orders/{restaurant_slug}', 'OrderController@index');
    });
