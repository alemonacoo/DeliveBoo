<?php

namespace App\Http\Controllers\admin;

use App\Menu;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Restaurant;
use Illuminate\Support\Facades\Auth;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index($restaurant_slug)
    {
        $menus = Menu::all()->where('restaurant_slug', $restaurant_slug);
        return view('admin.menus.index', compact('menus', 'restaurant_slug'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($restaurant_slug)
    {
        //
        // $menus = Menu::all();
        // return view('admin.menus.create', compact('menus'));

        return view('admin.menus.create', compact('restaurant_slug'));

    }

    /**
     * Store a newly created resource in storage.
     *
     *
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $restaurant_slug)
    {
        //
        $form_data = $request->all();
        $menu = new Menu();
        $menu->fill($form_data);
        $menu->restaurant_slug = $restaurant_slug;


        $menu->save();
        return redirect()->route('admin.restaurants.menus.index', $restaurant_slug);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function show($restaurant_slug, Menu $menu)
    {
        // dd('sono nella show di', $menu);
         return view('admin.menus.show', compact('menu', 'restaurant_slug'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function edit($restaurant_slug, Menu $menu)
    {
        return view('admin.menus.edit', compact('menu', 'restaurant_slug'));
        //

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $restaurant_slug, Menu $menu)
    {
        //
        $form_data = $request->all();
        $menu->update($form_data);
        return redirect()->route('admin.restaurants.menus.index', $restaurant_slug);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy($restaurant_slug, Menu $menu)
    {
         $menu->delete();
         return redirect()->route('admin.restaurants.menus.index', compact('restaurant_slug'));
    }
}
