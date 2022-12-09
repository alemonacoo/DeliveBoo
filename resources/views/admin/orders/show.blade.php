@extends('layouts.dashboard')

@section('content')
    {{-- show --}}
    <h1>Ordine numero: {{ $order->id }}</h1>
    <p>Effettuato il: {{ $order->created_at->format('m-d') }} alle {{ $order->created_at->format('H:i') }}</p>
    <p>Indirizzo consegna: {{ $order->address }}</p>

    {{-- delete --}}
    <form action="{{ route('admin.orders.destroy', $order->id) }}" method="POST">
        @csrf
        @method('DELETE')
        <input type="submit" value="Elimina Ordine" onclick="return confirm('Confermi di voler eliminare l\'ordine?')">
    </form>
@endsection
