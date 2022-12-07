@extends('layouts.dashboard')
@section('content')
    <h1>{{$restaurant->name }}</h1>

    <h3>Indirizzo:</h3>
    <p>{{ $restaurant->address }}</p>

    <h3>Partita Iva</h3>
    <p>{{ $restaurant->p_iva }}</p>
    
    <a href="../"><button>Indietro</button></a>
    <a href="../"><button>Modifica</button></a>
@endsection
