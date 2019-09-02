@extends('posts.postmaster')

@section('content')
    @if(!Auth::user())
        @include('auth.login')
    @endif 

    @if(count($posts) > 0)
        <script src="{{ asset('vendor/unisharp/laravel-ckeditor/ckeditor.js') }}"></script>
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
                $div.toggle(1000);
            });
        });
        $('#loginblock').hide();
        $('#comment').each( function() { //doet het niet?? alleen het laatste record.
            if(CKEDITOR.instances.comment){
                CKEDITOR.instances.comment.destroy(false);
            }
            CKEDITOR.replace('comment' , { //$(this).attr('id')
                            language: 'nl',
                            uiColor: '#dddddd'
            });
        });
    </script>
@endsection