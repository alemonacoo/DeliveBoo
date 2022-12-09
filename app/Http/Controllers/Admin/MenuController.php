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
    public function index(Restaurant $restaurant)
    {

        dd($restaurant);
        //  $menus = Menu::find()->restaurant($id);
         return view('admin.menus.index', compact('menus'));
    }


    public function newindex(Restaurant $restaurant)
    {

        dd($restaurant);
        //  $menus = Menu::find()->restaurant($id);
         return view('admin.menus.index', compact('menus'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        // $menus = Menu::all();
        // return view('admin.menus.create', compact('menus'));

        return view('admin.menus.create');

    }

    /**
     * Store a newly created resource in storage.
     *
     *
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $form_data = $request->all();
        $menu = new Menu();
        $menu->fill($form_data);


        $menu->save();
        return redirect()->route('admin.menus.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function show(Menu $menu)
    {
         return view('admin.menus.show', compact('menu'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function edit(Menu $menu)
    {
        return view('admin.menus.edit', compact('menu'));
        //

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Menu $menu)
    {
        //
        $form_data = $request->all();
        $menu->update($form_data);
        return redirect()->route('admin.menus.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy(Menu $menu)
    {
         $menu->delete();
         return redirect()->route('admin.menus.index');
    }
}
