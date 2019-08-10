@extends('posts.postmaster')

@section('content')
  @include('posts.post')
  <script src="{{ asset('js/functions.js') }}"></script>
  <script>
    $(".react").each(function() {
      $(this).hide();
    });
    $(".button10").each(function() {
      $(this).on("click", function() {

        var $div = $(this).siblings("#react");
        $div.toggle(2000);
      });
    });
  </script>
@endsection