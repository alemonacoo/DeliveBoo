@extends('layouts.dashboard')
@section('content')
    @foreach ($orders as $order)
        {{ $order->total }}
        {{ $order->address }}
        {{ $order->date_time }}
    @endforeach
@endsection
