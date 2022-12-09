@extends('layouts.dashboard')
@section('content')

 <p>Descrizione Piatto: {{$menu->description}}</p>
 <p>Prezzo: {{$menu->price}}$</p>

  <a href="{{route('admin.restaurants.menus.edit', [$restaurant_slug, $menu->slug])}}">EDITA</a>

  <form action="{{route('admin.restaurants.menus.destroy', [$restaurant_slug, $menu->slug])}}" method="post">
          @csrf
          @method('DELETE')
          <input onclick="corfirm('Are you sure?')" type="submit" value="ELIMINA">
      </form>


@endsection
