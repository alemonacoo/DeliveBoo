@extends('layouts.dashboard')
@section('content')
    @foreach ($menus as $menu)
    {{$menu->name }}
    @endforeach
@endsection
