@extends('layouts.dashboard')
@section('content')
<form action="{{route('admin.restaurants.update', $restaurant->slug)}}" method="POST">
    @csrf
    @method('PUT')
    <div>
        <label for="name">Restaurant Name:</label>
        <input type="text" name="name" required value="{{ old('name', $restaurant->name) }}">
    </div>

    <div>
        <label for="p_iva">Link Immagine:</label>
        <input type="text" name="image"  maxlength="255" value="{{old('image', $restaurant->image)}}">
    </div>

    <div>
        <label for="address">Indirizzo:</label>
        <input type="text" name="address" required maxlength="255" value="{{old('address', $restaurant->address)}}">
    </div>

    <div>
        <label for="p_iva">Partita Iva:</label>
        <input type="text" name="p_iva" required maxlength="255" value="{{old('p_iva', $restaurant->p_iva)}}">
    </div>

    <ul>
        @foreach ($categories as $category)
        <label for="categories">{{ $category->name }}</label>
        <input type="checkbox" name="category[]" value="{{ $category->id }}" {{$restaurant->category->contains($category) ? 'checked' : ''}}>
        @endforeach
    </ul>



    <div>
        <button type="submit">Aggiorna</button>
    </div>

    </form>
    

@endsection