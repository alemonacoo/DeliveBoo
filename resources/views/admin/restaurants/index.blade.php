@extends('layouts.dashboard')
@section('content')
    @foreach ($restaurants as $restaurant)
    <a href="{{ route('admin.restaurants.show', $restaurant) }}">
        {{$restaurant->name }}
    </a>
        @endforeach
@endsection
