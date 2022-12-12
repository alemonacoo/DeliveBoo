@extends('layouts.dashboard')
@section('content')
<form action="{{ route('admin.restaurants.store')}}" method="POST" enctype="multipart/form-data">
    @csrf

        {{-- Restaurant --}}
    <div>
        <label for="name">Nome Ristorante:</label>
        <input type="text" required minlength="5" maxlength="255" name="name" value="{{old('name', ' ')}}">
    </div>

    <div>
        <label for="p_iva">Link Immagine:</label>
        <input type="text" name="image" required maxlength="255" value="{{old('image', ' ')}}">
    </div>

    <div>
        <label for="address">Indirizzo:</label>
        <input type="text" name="address" required maxlength="255" value="{{old('address', ' ')}}">
    </div>

    <div>
        <label for="p_iva">Partita Iva:</label>
        <input type="text" name="p_iva" required maxlength="255" value="{{old('p_iva', ' ')}}">
    </div>

    
    {{-- Categories --}}
    <ul>
        @foreach ($categories as $category)
        <label for="categories">{{ $category->name }}</label>
        <input type="checkbox" name="category[]" value="{{ $category->id }}" {{ in_array($category->id, old('category', [])) ? 'checked' : ''}}>
        @endforeach
    </ul>

    
    <button type="submit">Crea</button>
    </form>
@endsection
