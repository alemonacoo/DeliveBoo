@extends('layouts.backoffice.dashboard')

@section('content')
<h1>Il nostro Menu</h1>
    @foreach ($menus as $menu)
     <a href="{{route('admin.restaurants.menus.show', [$restaurant_slug, $menu])}}">
        <p> {{$menu->name}}</p>
    </a>
    @endforeach

    <a class="btn btn-info my-3 mx-3" href="{{ route('admin.restaurants.menus.create', $restaurant_slug) }}">Aggiungi Piatto</a>


@endsection
