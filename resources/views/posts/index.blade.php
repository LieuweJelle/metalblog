@extends('posts.postmaster')

@section('content')
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
        $div.toggle(2000);
      });
    });
  </script>
<!-- <script>
	  	$('#loginblock').slideUp(1000);
	  $('#loginblock').slideDown(2000);
//loadLogin("login.php", callbackLogin);
</script> -->
    
@endsection