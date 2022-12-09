@extends('layouts.dashboard')

@section('content')
    <div class="row">
        @foreach ($orders as $order)
            <div class="col-12">
                <a href="{{ route('admin.orders.show', $order->id) }}">{{ $order->id }}</a>
            </div>
        @endforeach
    </div>
@endsection
