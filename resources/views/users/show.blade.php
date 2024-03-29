@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Bekijken') }}</div>

                <div class="card-body">
                    <div class="form-group row">
                        <label for="firstname" class="col-md-4 col-form-label text-md-right">{{ __('Voornaam') }}</label>

                        <div class="col-md-6">
                            <input id="firstname" type="text" class="form-control{{ $errors->has('firstname') ? ' is-invalid' : '' }}" name="firstname" value="{{ $user->firstname }}" readonly>

                            @if ($errors->has('firstname'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('firstname') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="lastname" class="col-md-4 col-form-label text-md-right">{{ __('Achternaam') }}</label>

                        <div class="col-md-6">
                            <input id="lastname" type="text" class="form-control{{ $errors->has('lastname') ? ' is-invalid' : '' }}" name="lastname" value="{{ $user->lastname }}" readonly>

                            @if ($errors->has('lastname'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('lastname') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Gebruikersnaam') }}</label>

                        <div class="col-md-6">
                            <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ $user->name }}" readonly>

                            @if ($errors->has('name'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('name') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Email') }}</label>

                        <div class="col-md-6">
                            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ $user->email }}" readonly>

                            @if ($errors->has('email'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="telephone" class="col-md-4 col-form-label text-md-right">{{ __('Telefoon') }}</label>

                        <div class="col-md-6">
                            <input id="telephone" type="text" class="form-control{{ $errors->has('telephone') ? ' is-invalid' : '' }}" name="telephone" value="{{ $user->telephone }}" readonly>

                            @if ($errors->has('telephone'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('telephone') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div><br />
                    
                    <div class="form-group row">
                        <label for="street" class="col-md-4 col-form-label text-md-right">{{ __('Straatnaam') }}</label>

                        <div class="col-md-6">
                            <input id="street" type="text" class="form-control{{ $errors->has('street') ? ' is-invalid' : '' }}" name="street" value="{{ $user->street }}" readonly>

                            @if ($errors->has('street'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('street') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                        
                    <div class="form-group row">
                        <label for="streetnumber" class="col-md-4 col-form-label text-md-right">{{ __('Straatnummer') }}</label>

                        <div class="col-md-6">
                            <input id="streetnumber" type="text" class="form-control{{ $errors->has('streetnumber') ? ' is-invalid' : '' }}" name="streetnumber" value="{{ $user->streetnumber }}" readonly>

                            @if ($errors->has('streetnumber'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('streetnumber') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="zipcode" class="col-md-4 col-form-label text-md-right">{{ __('Postcode') }}</label>

                        <div class="col-md-6">
                            <input id="zipcode" type="text" class="form-control{{ $errors->has('zipcode') ? ' is-invalid' : '' }}" name="zipcode" value="{{ $user->zipcode }}" readonly>

                            @if ($errors->has('zipcode'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('zipcode') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="place" class="col-md-4 col-form-label text-md-right">{{ __('Woonplaats') }}</label>

                        <div class="col-md-6">
                            <input id="place" type="text" class="form-control{{ $errors->has('place') ? ' is-invalid' : '' }}" name="place" value="{{ $user->place }}" readonly>

                            @if ($errors->has('place'))
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('place') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div><br />
                
                    <div class="card">
                        <div class="card-header">{{ __('Functie(s)') }}</div>
                        
                        <div class="card-body">
                            @foreach($roles as $role)
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="{{ $role->id }}" id="defaultCheck{{ $role->id }}" disabled  {{($user->roles->contains($role->id)) ? "checked" : ""}}>
                                <label class="form-check-label" for="defaultCheck{{ $role->id }}">
                                  {{ __($role->name) }}
                                </label>
                            </div>
                            @endforeach
                        </div>
                     </div><br />
                     
                     <div class="card"> 
                        <div class="card-header">{{ __('Vertel iets over u zelf (werk, hobby\'s, interesses )') }}</div>
                        
                        <div class="form-group"><br />
                            <textarea rows="4" cols="94" class="ta" name="intro" id="intro" readonly>{{ $user->intro }}</textarea>
                        </div>
                       
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <a href="{{ route('users.index') }}" class="btn btn-outline-primary">
                                    {{ __('Terug') }}
                                </a>
                                <a href="{{ route('posts.index') }}" class="btn btn-primary">
                                    {{ __('Terug naar Metalblog') }}
                                </a>
                            </div>
                        </div><br />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection