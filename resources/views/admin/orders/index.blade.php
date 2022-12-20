@extends('layouts.backoffice.dashboard')


@section('content')
    <div class="orders-container">
        <div class="orders-columns orange">
            <p>ID</p>
            <p>Piatti</p>
            <p>Totale</p>
        </div>
        <div>
            @foreach ($orders as $order)
            <div class="orders-columns">
                <p>{{ $order->id }}</p>
                <div>
                    @foreach ($order->menu as $item)
                    <p>
                        {{ $item->name }} - {{ $item->price }}$
                    </p>
                    @endforeach
                </div>
                
                <p>{{ $order->total }}$</p>
            </div>
        @endforeach
    </div>
        
    </div>
@endsection
