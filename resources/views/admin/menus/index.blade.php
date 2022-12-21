@extends('layouts.backoffice.dashboard')

@section('content')
<div class="relative-container">
<a class="back-button" href="../">&#10094;</a>
<h1 class="form-title">Il nostro Menu</h1>
<div class="menu-items-container">
    @foreach ($menus as $menu)
    <div class="single-menu-item">
        <div>
        <h3> {{$menu->name}}</h3>
        <p>Ingredienti : {{$menu->description}}</p>
        </div>
     <a href="{{route('admin.restaurants.menus.show', [$restaurant_slug, $menu])}}">
        Go to item
    </a>
    </div>
    @endforeach
    <div class="single-menu-item add">
    <a class="" href="{{ route('admin.restaurants.menus.create', $restaurant_slug) }}">
        <div class="plus-btn">+</div>
        <p>Aggiungi Piatto</p>
    </a>
</div>
</div>
</div>
@endsection
