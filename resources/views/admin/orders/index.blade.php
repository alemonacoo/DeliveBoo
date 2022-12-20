@extends('layouts.backoffice.dashboard')


@section('content')
    <div class="row">
        @foreach ($orders as $order)
            <div class="col-12 my-2">
                ID ORDINE: {{ $order->id }}
                @foreach ($order->menu as $item)
                    <div>
                        {{ $item->name }} - {{ $item->price }}$
                    </div>
                @endforeach
                TOTALE: {{ $order->total }}$
            </div>
        @endforeach
    </div>
@endsection
