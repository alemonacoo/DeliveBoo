@extends('layouts.dashboard')

@section('content')
    <div class="row">
        <div class="col-12">
            <a href="{{ route('admin.categories.create') }}">New Category</a>
        </div>
    </div>
    <div class="row mt-5">
        @foreach ($categories as $category)
            <div class="col-12">
                <a href="{{ route('admin.categories.show', $category->slug) }}">{{ $category->name }}</a>
            </div>
        @endforeach
    </div>
@endsection
