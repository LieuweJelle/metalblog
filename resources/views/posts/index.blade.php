@extends('posts.postmaster')

@section('content')
    @if(!Auth::user())
        @include('auth.login')
    @endif 

    @if(count($posts) > 0)
        @foreach($posts as $post)
            @include('posts.post')
        @endforeach
    @else 
       <p>No posts found!</p>
    @endif
    <script src="{{ asset('js/functions.js') }}"></script>
    <script>
        $(".react").each(function() {
            $(this).hide();
        });
        $(".button10").each(function() {
            $(this).on("click", function() {

                var $div = $(this).siblings("#react");
                $div.toggle(500);
            });
        });
        $('#loginblock').hide();
    </script>
@endsection