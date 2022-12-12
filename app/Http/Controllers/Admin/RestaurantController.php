<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Restaurant;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

include(app_path() . '/Utilities/slug.php');


class RestaurantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $user_id = Auth::id();
        $restaurants = Restaurant::all()->where('user_id', $user_id);
        return view('admin.restaurants.index', compact('restaurants'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $categories = Category::all();
        return view('admin.restaurants.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validator($request);
        $form_data = $request->all();
        $restaurant = new Restaurant();
        $restaurant->fill($form_data);
        $restaurant->slug = getSlugForTable($form_data['name'], 'restaurants');
        $restaurant->user_id = Auth::id();
        $restaurant->save();

        if(array_key_exists('category', $form_data)){
            $restaurant->category()->sync($form_data['category']);
        }

        return redirect()->route('admin.restaurants.show', $restaurant->slug);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Restaurant  $restaurant
     * @return \Illuminate\Http\Response
     */
    public function show(Restaurant $restaurant)
    {
        //
        if ($restaurant->user_id !== Auth::id() ) {
            abort(404);
        }
        $categories = $restaurant->category;
        return view('admin.restaurants.show', compact('restaurant', 'categories'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Restaurant  $restaurant
     * @return \Illuminate\Http\Response
     */
    public function edit(Restaurant $restaurant)
    {
        //
        if ($restaurant->user_id !== Auth::id() ) {
            abort(404);
        }
        return view('admin.restaurants.edit', compact('restaurant'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Restaurant  $restaurant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Restaurant $restaurant)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Restaurant  $restaurant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Restaurant $restaurant)
    {
        //
        $restaurant->category()->sync([]);
        $restaurant->delete();
        return redirect()->route('admin.restaurants.index');
    }

    private function validator(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
            'p_iva' => 'required|max:11',
            'address' => 'required|max:255',
        ], [
            'required' => 'il campo è obbligatorio',
            'max' => 'lunghezza massima di :max caratteri'
        ]);
    }

    

}
