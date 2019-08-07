@extends('posts.postmaster')

@section('content')
    <!-- <H1>Hier komt het inlog scherm</H1> -->
    @if(count($posts) > 0)
      @foreach($posts as $post)
          @include('posts.post')
      @endforeach
    @else 
        <p>No posts found!</p>
    @endif
    <script src="{{ asset('js/functions.js') }}"></script>
@endsection