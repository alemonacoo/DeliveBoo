@extends('layouts.dashboard')
@section('content')

 <p>Descrizione Piatto: {{$menu->description}}</p>
 <p>Prezzo: {{$menu->price}}$</p>

  <a href="{{route('admin.menus.edit', $menu->slug)}}">EDITA</a>

  <form action="{{route('admin.menus.destroy', $menu->slug)}}" method="post">
          @csrf
          @method('DELETE')
          <input onclick="corfirm('Are you sure?')" type="submit" value="ELIMINA">
      </form>


@endsection
