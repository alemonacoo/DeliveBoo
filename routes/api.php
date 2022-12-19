<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// }); nessuno può registarsi come utente ma solo come admin

Route::resource('categories', 'Api\CategoriesController', ['only' => ['index']]);

Route::resource('categories.restaurants', 'Api\RestaurantController', ['only' => ['index', 'show']])->parameters(['categories' => 'category:id']);

Route::resource('restaurants.menus', 'Api\MenuController', ['only' => ['index', 'show']])->parameters(['restaurants' => 'restaurant:slug']);
