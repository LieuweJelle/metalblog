@extends('posts.postmaster')

@section('content')
<div class="card">
    <h2><a href="/posts/{{ $post->id }}" class="black">{{ $post->title }}</a></h2>
    <h3 style="color:darkred">
    @if(!empty($post->tags))
        @foreach($post->tags as $tag)
        {{-- <a href="/posts/tags/{{ $tag->name }}"></a> --}}
            {{ ", ".$tag->name }}
        @endforeach
    @endif
    </h3><br />
    <p><h5 class="h5-left">Discography {{ $post->title }}</h5>
    <h5 class="h5-right">Posted by {{ $post->user->name }} on {{ $post->created_at->format('d-m-Y') }}</h5></p>
    @if (Auth::check())
        <span class="right"><a href="{{ url('/posts/edit', [ 'id' => $post->id ]) }}" class="x">w</a></span>
    @endif
    <div>{!! $post->body !!}</div>
    
    @if($post->cover_image) 
        <div class="fakeimg">
        @if(env('DB_DATABASE')!='blog')
            <img src="https://www.lieuwe-jelle.nl/metalblog/storage/app/public/cover_images/{{ $post->cover_image }}" width="760" alt="image" />
        @elseif(env('DB_DATABASE')=='blog')
            <img src="/storage/cover_images/{{ $post->cover_image }}" width="760" alt="image" />
        @endif
        </div>
    @endif

    <?php $count = 0; ?>
    @if(!empty($post->comments))
    @foreach($post->comments as $comment)
        <?php $count++; ?>
        <div class="subcard">
            <p><h5 class="h5-left-comment">{{ $comment->user->name }} says</h5>
            <h5 class="h5-right-comment">{{ $comment->created_at->format('d-m-Y H:i:s') }}</h5></p>
            <h3 style="color:darkred">{{ $comment->title }}</h3>
            <div class="comm">{!! $comment->body !!}</div><span class="right"><a href="#" class="x">x</a></span>
        </div>
        @if(!empty($post->comments) >= $count)
            <?php echo '<br />'; ?>
        @endif
    @endforeach
    @endif
    
    @if(!$post->disabled)
        <button type="button" id="button10" class="button button10">reageer</button><br /><br />
        @if(Auth::check())
            <div id="react" class="react">
                <form method="post" action="/posts/{{ $post->id }}/comments" name="form1" class="form1">
                    @csrf
                    <span class="namefield">Titel Reactie</span>
                    <input type="text" id="txt" size="43" maxlength="50" name="title" value="" autocomplete="off" /><br />
                    <div id="fieldspace"></div>
                    <span class="namefield">Text Reactie:</span><br />
                    <textarea class="form-control" rows="3" cols="75" id="comment" name="body"></textarea><br />
                    <button type="submit" name="submit" id="button5">Add Comment</button>
                </form>
                @include('layouts.error')
            </div>
        @else
            <div id="react" class="react">
                <br />&#8658;&nbsp;&nbsp;Je moet ingelogd zijn om te reageren.<br />
                <ul>
                  <li><a href="{{ url('/login') }}">inloggen</a></li>
                  <li><a href="{{ route('register') }}">registreer mij!</a></li>
                  <li><a href="{{ route('password.request') }}">nieuw wachtwoord</a></li>
                </ul>
            </div>
        @endif
        <span class="right"><a href="#" class="x">x</a></span>
    @else
        Hier kan niet meer op gereageerd worden.
    @endif
</div>
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