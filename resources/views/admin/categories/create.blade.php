@extends('layouts.dashboard')


@section('content')
    @if ($errors->any())
        <div class="row">
            <div class="col-12 bg-danger">
                There are some errors...
            </div>
        </div>
    @endif

    <form action="{{ route('admin.categories.store') }}" method="POST">
        @csrf


        <div @error('name') @enderror>
            <label for="name">Category name:</label>
            <input type="text" name="name" maxlength="30" value="{{ old('name', '') }}">
            @error('name')
                <div class="text-danger">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <div>
            <input type="submit" value="Create">
        </div>
    </form>
@endsection
