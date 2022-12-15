@extends('layouts.backoffice.dashboard')

@section('content')

    <a href="{{ route('admin.restaurants.create') }}"><button>Nuovo</button></a>
    @foreach ($restaurants as $restaurant)
    <a href="{{ route('admin.restaurants.show', $restaurant) }}">
        {{$restaurant->name }}
    </a>
        @endforeach
@endsection
