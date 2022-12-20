@extends('layouts.backoffice.dashboard')

@section('content')
<div class="single-restaurant-container">

    <img src="{{$restaurant->image}}" alt="restaurant-cover"/>
    <div class="restaurant-info-container">
        <div>
    <h1>{{ $restaurant->name }}</h1>
    <h3>Indirizzo:</h3>
    <p>{{ $restaurant->address }}</p>

    <h3>Partita Iva</h3>
    <p>{{ $restaurant->p_iva }}</p>

    <h3>Categorie</h3>
    @foreach ($categories as $category)
        <p>{{ $category->name }}</p>
    @endforeach
</div>
    <a class="back-button" href="../">&#10094;</a>

    <div class="single-restaurant-btn-container">
    <a href="{{ route('admin.restaurants.edit', $restaurant->slug) }}" class="button-global"><button>Modifica</button></a>

    {{-- Delete Button --}}
    <form action="{{ route('admin.restaurants.destroy', $restaurant->slug) }}" method="POST">
        @csrf
        @method('DELETE')
        <a type="submit" value="delete" class="button-global red"><button>Cancella</button></a>
    </form>

    {{-- Show Menu --}}
    <a href="{{ route('admin.restaurants.menus.index', $restaurant) }}" class="button-global"><button>Vedi Menu</button></a>

    {{-- Show Orders --}}
    <a href="{{ route('admin.restaurants.orders.index', $restaurant) }}" class="button-global"><button>Vedi Ordini</button></a>
</div>    
</div>
</div>
@endsection
