@extends('layouts.backoffice.dashboard')

@section('content')

<div class="relative-container">
    <a class="back-button" href="../">&#10094;</a>

    <h6 class="form-title">Modifica il tuo ristorante</h6>

     <div class="form-container">
     @if ($errors->any())
         <div class="error-container">
       <p class="error-text">
        There are some errors...
       </p>
         </div>
@endif

<form action="{{route('admin.restaurants.update', $restaurant->slug)}}" method="POST">
    @csrf
    @method('PUT')
    <div class="input-container">
        <label for="name">Restaurant Name:</label>
        <input type="text" name="name" required value="{{ old('name', $restaurant->name) }}">
    </div>

    <div class="input-container">
        <label for="p_iva">Link Immagine:</label>
        <input type="text" name="image"  maxlength="255" value="{{old('image', $restaurant->image)}}">
    </div>

    <div class="input-container">
        <label for="address">Indirizzo:</label>
        <input type="text" name="address" required maxlength="255" value="{{old('address', $restaurant->address)}}">
    </div>

    <div class="input-container">
        <label for="p_iva">Partita Iva:</label>
        <input type="text" name="p_iva" required maxlength="255" value="{{old('p_iva', $restaurant->p_iva)}}">
    </div>

    <div class="categories-input">
        <p>Modifica una o più categorie (max 2)</p>

    <ul class="categories-container">
        @foreach ($categories as $category)
        <div>
            <input type="checkbox" name="category[]" value="{{ $category->id }}" {{$restaurant->category->contains($category) ? 'checked' : ''}}>
        <label for="categories">{{ $category->name }}</label>
        </div>
        @endforeach
    </ul>
</div>


    <a  class="button-global">
        <button type="submit">Aggiorna</button>
    </div>

</a>
</form>
</div>
</div>
    

@endsection