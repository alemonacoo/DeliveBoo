@extends('layouts.backoffice.dashboard')

@section('content')

<div class="my-restaurants-header">
    <h1>I miei ristoranti</h1>
    <a class="button-global" href="{{ route('admin.restaurants.create') }}"><button>Nuovo</button></a>
</div>
    <div class="restaurant-cards-container">
    @foreach ($restaurants as $restaurant)
    <a class="restaurant-card" href="{{ route('admin.restaurants.show', $restaurant) }}">
        <img src="{{ $restaurant->image}}" alt="restaurant-cover" class="restaurant-class-img">
        {{$restaurant->name }}
    </a>
        @endforeach
</div>
@endsection

{{-- // TODO : cambia immagini dei ristoranti  --}}