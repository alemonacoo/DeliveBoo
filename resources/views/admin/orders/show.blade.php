@extends('layouts.dashboard')

@section('content')
    {{-- show --}}
    <h1>Ordine numero: {{ $order->id }}</h1>
    <p>Effettuato il: {{ $order->created_at->format('m-d') }} alle {{ $order->created_at->format('H:i') }}</p>
    <p>Indirizzo consegna: {{ $order->address }}</p>
@endsection
