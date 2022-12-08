@extends('layouts.dashboard')
@section('content')
<h1>Il nostro Menu</h1>
    @foreach ($menus as $menu)
     <a href="{{route('admin.menus.show', $menu)}}">
        <p> {{$menu->name}}</p>
    </a>
    @endforeach



    <a class="btn btn-info my-3 mx-3" href="{{ route('admin.menus.create') }}">Aggiungi Piatto</a>


@endsection
