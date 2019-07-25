@extends('posts.postmaster')

@section('content')
    <H1>Hier komt het inlog scherm</H1>
    @foreach($posts as $post)
        @include('posts.post')
    @endforeach
    <script src="{{ asset('js/functions.js') }}"></script>
@endsection