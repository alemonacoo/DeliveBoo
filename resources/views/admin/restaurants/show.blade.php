@extends('layouts.dashboard')
@section('content')
    <h1>{{$restaurant->name }}</h1>

    <h3>Indirizzo:</h3>
    <p>{{ $restaurant->address }}</p>

    <h3>Partita Iva</h3>
    <p>{{ $restaurant->p_iva }}</p>
    
    <a href="../"><button>Indietro</button></a>
    
    <a href="{{ route('admin.restaurants.edit', $restaurant->slug) }}"><button>Modifica</button></a>

    {{-- Delete Button --}}
    <form action="{{ route('admin.restaurants.destroy', $restaurant->slug) }}" method="POST">
        @csrf
        @method('DELETE')
        <a type="submit" value="delete"><button>CANCELLA</button></a>
    </form>

    {{-- Show Menu --}}
    <a href="{{ route('admin.restaurants.menus.index', $restaurant) }}"><button>Vedi Menu</button></a>


@endsection
