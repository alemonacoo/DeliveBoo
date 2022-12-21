@extends('layouts.backoffice.dashboard')

@section('content')

<div class="relative-container">
<a class="back-button" href="../">&#10094;</a>

<h6 class="form-title dish">{{$menu->name}}</h6>

<div class="piatto-container">
    <div>
        <p class="titolo">Ingredienti:</p>
        <p >{{$menu->description}}</p>
    </div>
    <div>
        <p class="titolo">Prezzo:</p>
        <p>{{$menu->price}}$</p>
    </div>

    <div class="single-dish-btn-container">
  <a href="{{route('admin.restaurants.menus.edit', [$restaurant_slug, $menu->slug])}}" class="button-global"><button>Modifica</button></a>

  <form action="{{route('admin.restaurants.menus.destroy', [$restaurant_slug, $menu->slug])}}" method="post">
          @csrf
          @method('DELETE')
          <a type="submit" value="delete" onclick="corfirm('Are you sure?')" class="button-global red"><button>Elimina</button></a>
      </form>
    </div>
</div>
    </div>
@endsection
