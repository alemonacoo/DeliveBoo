@extends('layouts.backoffice.dashboard')


@section('content')
    <div class="orders-container">
        <div class="orders-columns orange">
            <p>ID</p>
            <p>Indirizzo</p>
            <p>Piatti</p>
            <p>Totale</p>
        </div>
        <div>
            @foreach ($orders as $order)
            <div class="orders-columns">
                <p>{{ $order->id }}</p>
                <p>{{$order->address}}</p>
                <div>
                    @foreach ($order->menu as $item)
                    <p>
                        {{ $item->name }}
                    </p>
                    @endforeach
                </div>
                
                <p>{{ $order->total }}$</p>
            </div>
        @endforeach
    </div>
        
    </div>
@endsection
