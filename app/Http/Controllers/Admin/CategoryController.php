<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
include (app_path() . '/Utilities/slug.php');


class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response 
     */
    public function index()
    {
        //
        $categories = Category::all();
        return view('admin.categories.index', compact('categories'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.categories.create');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'name' =>'required|unique:categories,name'
        ],
        [
            'required' => ':attribute is required',
            'unique' => ':attribute has already been taken'
        ]);

        $form_data = $request->all();
        $category = new Category();
        $category->fill($form_data);
        $slug = getSlugForTable($category->name, 'categories');
        $category->slug = $slug;
        $category->save();

        return redirect()->route('admin.categories.show', $category->slug);


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
        return view('admin.categories.show', compact('category'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        //
        return view('admin.categories.edit', compact('category'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        //
        $request->validate([
            'name' =>'required|unique:categories,name'
        ],
        [
            'required' => ':attribute is required',
            'unique' => ':attribute has already been taken'
        ]);

        $form_data = $request->all();
        if($category->name != $form_data['name']){
            $slug = getSlugForTable($form_data['name'], 'categories');
            $form_data['slug'] = $slug;
        }

        $category->update($form_data);
        // $category->restaurant()->sync([]);

        return redirect()->route('admin.categories.show', $category->slug);

        // $category = Category::find(1);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
        $category->delete();
        return redirect()->route('admin.categories.index');

    }

    // private function getSlug($name){
    //     $slug = Str::slug($name);
    //     $slug_base = $slug;

    //     $existingRestaurant = Category::where('slug', $slug)->first();
    //     $counter = 1;
    //     while($existingRestaurant){
    //         $slug = $slug_base . '_' . $counter;
    //         $counter++;
    //         $existingRestaurant = Category::where('slug', $slug)->first();
    //     }
    //     return $slug;
    //}
}
