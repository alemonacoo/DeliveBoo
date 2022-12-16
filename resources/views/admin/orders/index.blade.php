@extends('layouts.backoffice.dashboard')


@section('content')
    <div class="row">
        @foreach ($orders as $order)
            <div class="col-12">
                {{-- <a href="{{ route('admin.orders.show', $order->id) }}">{{ $order->id }}</a> --}}
                {{ $order->id }}
            </div>
        @endforeach
    </div>
@endsection
