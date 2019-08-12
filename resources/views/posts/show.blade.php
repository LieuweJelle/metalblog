@extends('posts.postmaster')

@section('content')

  @if(!Auth::user())
       @include('auth.login')  {{-- --}}
   @endif 
   @include('posts.post')
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