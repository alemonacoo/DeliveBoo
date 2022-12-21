@extends('layouts.backoffice.dashboard')

@section('content')

<div class="relative-container">
    <a class="back-button" href="../">&#10094;</a>

    <h6 class="form-title">Aggiungi un piatto al tuo menù</h6>

     <div class="form-container">
     @if ($errors->any())
         <div class="error-container">
       <p class="error-text">
        There are some errors...
       </p>
         </div>
@endif
<form action="{{ route('admin.restaurants.menus.store', $restaurant_slug) }}" method="post">
    @csrf
    @method('POST')
    <div class="input-container">
        <label for="name">Name:</label>
        <input required maxlength="255" type="text" name="name" value="{{ old('name', '') }}">
        @error('name')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>
    <div class="input-container">
        <label for="description">Description:</label>
        <input required maxlength="255" type="text" name="description" value="{{ old('description', '') }}">
        @error('description')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>
    <div class="input-container">
        <label for="price">Price:</label>
        <input required maxlength="10" type="number" step="0.1" name="price" value="{{ old('price', '') }}">
        @error('price')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>

    <div class="input-container">
        <label for="visible">Visible:</label>
        <input  type="checkbox" name="visible" value="{{ old('visible', '') }}">
        @error('visible')
            <div class="my-2 bg-danger text-white">
                {{ $message }}
            </div>
        @enderror
    </div>



    <div class="input-container">
        <label for="image">Image:</label>
        <input type="file" name="image" disabled>
    </div>
    
    <a class="button-global">
        <button type="submit">Crea</button>
     </a>
     
</form>

</div>
</div>



@endsection



