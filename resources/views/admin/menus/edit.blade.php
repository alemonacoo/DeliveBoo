@extends('layouts.backoffice.dashboard')

@section('content')
  <form action="{{ route('admin.restaurants.menus.update', [$restaurant_slug, $menu->slug]) }}" method="post">
    @csrf
     @method('PATCH')
    <div>
        <label for="name">Name:</label>
        <input required maxlength="255" type="text" name="name" value="{{ old('name', $menu->name) }}">
        @error('name')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>
    <div>
        <label for="description">Description:</label>
        <input required maxlength="255" type="text" name="description" value="{{ old('description', $menu->description) }}">
        @error('description')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>
    <div>
        <label for="price">Price:</label>
        <input required maxlength="10" type="number" step="0.1" name="price" value="{{ old('price', $menu->price) }}">
        @error('price')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>

    <div>
        <label for="ingredients">Ingredients:</label>
        <input required maxlength="255" type="text" name="ingredients" value="{{ old('ingredients', $menu->ingredients) }}">
        @error('ingredients')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>

    <div>
        <label for="visible">Visible:</label>
        <input  type="checkbox" name="visible" value="{{ old('visible', $menu->visible) }}">
        @error('visible')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>


    <div>
        <label for="image">Image:</label>
        <input type="file" name="image" disabled>
    </div>


    <input type="submit" value="Aggiorna">


</form>



@endsection
