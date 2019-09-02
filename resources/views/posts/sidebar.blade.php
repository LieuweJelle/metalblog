<div class="card">
  @if (Auth::check())
    <button type="button" class="button" id="button5" onclick="javascript:location.href='{{ url('/logout') }}'">uitloggen</button><br />
    <div id='fieldspace'></div><div id='fieldspace'></div>
  @else
  <script>
      //$("#loginblock").slideDown(1000);
  </script>
  <button type="button" class="button" id="button5" onclick="javascript:$('#loginblock').slideDown(1000);$('html,body').animate({scrollTop: $('.blog').offset().top},'slow');">inloggen</button><br />
    <div id='fieldspace'></div><div id='fieldspace'></div>
  @endif
  <form class="example" action="search.blade.php" method="post">
    <input type="text" placeholder="Search.." name="search" id="search" class="search">
    <div id='fieldspace'></div><div id='fieldspace'></div>
    <button type="button" class="button" id="button4">zoeken in blog</button>
  </form>
  <div id='fieldspace'></div><div id='fieldspace'></div><div id='fieldspace'></div><div id='fieldspace'></div>
  @if (Auth::check())
    <button type="button" class="button" id="button1" onclick="javascript:location.href='{{ url('/posts/create') }}'">band uploaden</button><br />
    <div id='fieldspace'></div><div id='fieldspace'></div><div id='fieldspace'></div><div id='fieldspace'></div>
    <button type="button" class="button" id="buttonnew1" onclick="javascript:location.href='{{ url('/users') }}'">registreer users</button><br />
    <div id='fieldspace'></div><div id='fieldspace'></div><div id='fieldspace'></div><div id='fieldspace'></div>
    <button type="button" class="button" id="button6" onclick="javascript:location.href='{{ url('/noise/noiseplayer.php') }}'">noisePlayer()</button><br />
    <div id='fieldspace'></div>
  @endif
</div>
  
<div class="card">
  <h2>About Me</h2>
  <img class="portrait" src="{{ asset('img/lieuwe.jpg') }}" width="77" alt="image" />
  <div class="fakeimgportrait"></div>
  <table class="table"><tr><td>Laravel</td></tr><tr><td>PHP</td></tr><tr><td>JS HTML CSS</td></tr></table><br />
  <p class="after">Noise, a way of life.</p>
</div>

<div class="card">
  <h3>Genres</h3>
  <ul class="list-unstyled">
    @foreach($tags->sort() as $tag)
      <li>
        <a class="nodec" href="/posts/tags/{{ $tag }}">{{ $tag }}</a>
      </li>
    @endforeach
    <br />
    <li>
      <a class="nodec" href="/posts">All</a>
    </li>
  </ul>
</div>

<div class="card">
  <h3>Archives</h3>
  <ul class="list-unstyled">
    @foreach($archives as $archive)
      <li>
        <a href="/posts?month={{ $archive['month'] }}&year={{ $archive['year'] }}" class="green">{{ $archive['month'] .' '. $archive['year'] }}</a>
      </li>
    @endforeach 
  </ul>
</div>

<div class="card">
  <h3>Logos</h3><br /><br />
  @foreach($logos as $logo)
    @if(!empty($logo->logo))
      <div class="fakeimgsmall">
        <a href="/posts/{{ $logo->id }}"><img src="/storage/cover_images/{{ $logo->logo }}" width="170" alt="image" /></a>
      </div>
    @endif
  @endforeach
</div>

<div class="card">
  <h3>Popular Posts</h3>
  <div class="fakeimg"><img src="/storage/cover_images/slayer-xtra.jpg" width="165" alt="image" /></div><br />
  <div class="fakeimg"><img src="/storage/cover_images/atthegates-xtra.jpg" width="165" alt="image" /></div><br />
  <div class="fakeimg"><img src="/storage/cover_images/Fleshgod-Apocalpse-xtra.jpg" width="165" alt="image" /></div>
</div>

<div class="card">
  <h3>Tags</h3>
  <ul class="list-unstyled">
    @foreach($tags->sort() as $tag)
      <li>
        <a class="nodec" href="/posts/tags/{{ $tag }}">{{ $tag }}</a>
      </li>
    @endforeach
    <br />
    <li>
      <a class="nodec" href="/posts">All</a>
    </li>
  </ul>
</div>

<div class="card">
  <h3>Follow Me</h3>
  <p>Some text..</p>
</div>
<script>
function addCSS() {
    $(".button")
		.css("font-size", "12pt")
		.css("padding", "4px 12px")
		.css("border", "1px solid #ac0000")
		.css("color", "#ac0000")
		.width(160); 
	$(".button").hover(function(){
		$(this).css("font-weight", "bold");
		$(this).css("border", "1px solid #A8015C");
		$(this).css("color", "#A8015C");
		//$(this).css("background-color", "yellow");
		}, function(){ // AND restore!
		 $(this).css("font-weight", "normal");    
		 $(this).css("border", "1px solid #ac0000");
		 $(this).css("color", "#ac0000");
		//$(this).css("background-color", "pink");
	});
}
addCSS();
</script>
