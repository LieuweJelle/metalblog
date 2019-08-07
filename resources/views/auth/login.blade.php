@extends('posts.postmaster')

@section('content')
<br /><br />
<div class='main'>
  <form name='login' action="{{ route('login') }}" method='post' autocomplete='off' class='login'>
    @csrf
    <span class='namefieldPw'>E-mail Adres</span>
    <input id="email" size='30' maxlength='40' type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

    @if ($errors->has('email'))
        <span class="invalid-feedback">
            <strong>{{ $errors->first('email') }}</strong>
        </span>
    @endif
    <!-- <input type='text' size='30' maxlength='40' name='username' value='$username' autocomplete='off' autofocus /><br />-->
    <div id='fieldspace'></div>
    <span class='namefieldPw'>Wachtwoord</span>
    <input id="password" size='30' maxlength='40' type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

    @if ($errors->has('password'))
        <span class="invalid-feedback">
            <strong>{{ $errors->first('password') }}</strong>
        </span>
    @endif
    <!-- <input type='password' size='30' maxlength='40' name='password' autocomplete='off' /><br /> -->
    <label>
        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}
    </label>
    <div id='fieldspace'></div><div id='fieldspace'></div>
    <span class='namefieldPw'>&nbsp;</span>
    <input type='submit' class='button' value='Inloggen' name='submit' /><br />
    <a class="btn btn-link" href="{{ route('password.request') }}">
        {{ __('Forgot Your Password?') }}
    </a>
    </form><br />
</div>
@endsection

