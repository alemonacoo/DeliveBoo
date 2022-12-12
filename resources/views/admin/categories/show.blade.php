@extends('layouts.dashboard')

@section('content')
    <h2>{{ $category->name }}</h2>

    <div class="mb-2">
        <a href="{{ route('admin.categories.edit', $category->slug) }}">Edit</a>
    </div>
    <div class="mb-2">
        <form action="{{ route('admin.categories.destroy', $category->slug) }}" method="POST">
            @csrf
            @method('DELETE')
            <input onclick="confirm('Are you sure?')" class="delete-btn" type="submit" value="Delete">
        </form>
    </div>
@endsection
