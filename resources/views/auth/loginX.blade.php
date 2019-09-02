@if(Auth::guard('web')->check())
    <div id="loginblock"><br /><h3 style="color:#ac0000;">&#8658;&nbsp;&nbsp;&nbsp;blog in</h3>{{ Auth::guard('web')->user()->name }} {USER}
@elseif(Auth::guard('writer')->check())
    <div id="loginblock"><br /><h3 style="color:#ac0000;">&#8658;&nbsp;&nbsp;&nbsp;blog in</h3>{{ Auth::guard('writer')->user()->name }} (WRITER)
@elseif(Auth::guard('admin')->check()) 
    <div id="loginblock"><br /><h3 style="color:#ac0000;">&#8658;&nbsp;&nbsp;&nbsp;blog in</h3>{{ Auth::guard('admin')->user()->name }} (ADMIN)
@else
    <div id="loginblock"><br /><h3 style="color:#ac0000;">&#8658;&nbsp;&nbsp;&nbsp;blog in</h3>
@endif