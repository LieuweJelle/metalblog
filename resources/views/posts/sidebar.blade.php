<div class="card">
    @if (Auth::check())
        <button type="button" class="button" id="button5" onclick="javascript:location.href='{{ url('/logout') }}'">uitloggen</button><br />
        <div id='fieldspace'></div>
    @else
        <button type="button" class="button" id="button5" onclick="javascript:location.href='{{ url('/login') }}'">inloggen</button><br />
        <div id='fieldspace'></div>
    @endif
    <form class="example" action="search.blade.php" method="post">
        <input type="text" placeholder="Search.." name="search" id="search" class="search">
        <div id='fieldspace'></div>
        <button type="button" class="button" id="button4">zoeken in blog</button>
    </form>
    <div id='fieldspace'></div><div id='fieldspace'></div>
    @if (Auth::check())
        <button type="button" class="button" id="button1" onclick="javascript:location.href='{{ url('/posts/create') }}'">upload nieuw artikel</button><br />
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
  <h3>Tags</h3>
  <ul class="list-unstyled">
      @foreach($tags as $tag)
          <li>
              <a href="/posts/tags/{{ $tag }}">{{ $tag }}</a>
          </li>
      @endforeach
  </ul>
</div>

<div class="card">
  <h3>Archives</h3>
 <ul class="list-unstyled">
    @foreach($archives as $archive)
        <li>
            <a href="/posts?month={{ $archive['month'] }}&year={{ $archive['year'] }}">{{ $archive['month'] .' '. $archive['year'] }}</a>
        </li>
   @endforeach 
  </ul>
</div>

<div class="card">
    <h3>Logos</h3><br /><br />
    @foreach($logos as $logo)
      @if(!empty($logo->logo))
        <div class="fakeimgsmall">
          <img src="/storage/cover_images/{{ $logo->logo }}" width="170" alt="image" />
        </div>
      @endif
    @endforeach
</div>

<div class="card">
  <h3>Tags</h3>
  <ul class="list-unstyled">
    @foreach($tags as $tag)
      <li>
        <a href="/posts/tags/{{ $tag }}">{{ $tag }}</a>
      </li>
    @endforeach
  </ul>
</div>

<div class="card">
  <h3>Popular Post</h3>
  <div class="fakeimg"><img src="/storage/cover_images/slayer-xtra.jpg" width="170" alt="image" /></div><br />
  <div class="fakeimg"><img src="/storage/cover_images/atthegates-xtra.jpg" width="170" alt="image" /></div><br />
  <div class="fakeimg"><img src="/storage/cover_images/Fleshgod-Apocalpse-xtra.jpg" width="170" alt="image" /></div>
</div>

<div class="card">
  <h3>Follow Me</h3>
  <p>Some text..</p>
</div>