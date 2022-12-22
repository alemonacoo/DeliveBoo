@extends('layouts.backoffice.dashboard')

@section('content')

<div class="relative-container">
    <a class="back-button" href="../">&#10094;</a>

    <h6 class="form-title">Crea il tuo nuovo ristorante</h6>

     <div class="form-container">
     @if ($errors->any())
         <div class="error-container">
       <p class="error-text">
        There are some errors...
       </p>
         </div>
@endif

<form action="{{ route('admin.restaurants.store')}}" method="POST" enctype="multipart/form-data">
    @csrf

        {{-- Restaurant --}}
    <div class="input-container">
        <label for="name">Nome Ristorante:</label>
        <input type="text" required minlength="5" maxlength="255" name="name" value="{{old('name', ' ')}}">
    </div>

    <div class="input-container">
        <label for="p_iva">Link Immagine:</label>
        <input type="text" name="image" required maxlength="255" value="{{old('image', ' ')}}">
    </div>

    <div class="input-container">
        <label for="address">Indirizzo:</label>
        <input type="text" name="address" required maxlength="255" value="{{old('address', ' ')}}">
    </div>

    <div class="input-container">
        <label for="p_iva">Partita Iva:</label>
        <input type="text" name="p_iva" required maxlength="255" value="{{old('p_iva', ' ')}}">
    </div>

<div class="categories-input">
    <p>Seleziona una o più categorie (max 2)</p>
    
    {{-- Categories --}}
    <ul class="categories-container">
        @foreach ($categories as $category)
        <div>
        <input type="checkbox" name="category[]" value="{{ $category->id }}" {{ in_array($category->id, old('category', [])) ? 'checked' : ''}}>
        <label for="categories">{{ $category->name }}</label>
        </div>
        @endforeach
    </ul>
</div>

 <a class="button-global">
    <button type="submit">Crea</button>
 </a>
    </form>
</div>
</div>
@endsection
