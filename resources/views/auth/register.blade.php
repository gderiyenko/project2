@extends('layouts.app')

@section('content')
<body class="login">
    <div class="logo">
        <a href="/list">
        <img src="../assets/pages/img/logo-big-white.png" style="height: 17px;" alt="" /> </a>
    </div>
    <div class="content">
                    <form class="login-form" role="form" method="POST" action="{{ url('/register') }}">
                        {{ csrf_field() }}
                        <div class="form-title">
                            <span class="form-title">Sign Up</span>
                        </div>
                        <p class="hint"> Enter your personal details below: </p>

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                <input placeholder="Name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                <input placeholder="Email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                                <input placeholder="Password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                        </div>

                        <div class="form-group">
                                <input placeholder="Confirm Password" type="password" class="form-control" name="password_confirmation" required>
                        </div>

                        <div class="form-actions">
                            <a href="/login" class="btn btn-default">Back</a>
                            <button type="submit" id="register-submit-btn" class="btn red uppercase pull-right">Submit</button>
                        </div>
                    </form>

    </div>
@endsection
