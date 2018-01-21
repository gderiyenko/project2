<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
// google 2fa
 use Google2FA;
 use Cache;
 use Illuminate\Http\Request;
 use Illuminate\Support\Facades\Auth;
 use Illuminate\Contracts\Auth\Authenticatable;
 use App\Http\Requests\ValidateSecretRequest;
// end

class LoginController extends Controller
{
    use AuthenticatesUsers;

    protected $redirectTo = '/home';

    public function __construct()
    {
        $this->middleware('guest', ['except' => 'logout']);
    }

    public function authenticated(Request $request, $user)
    {
        if ($user->active == 1) {
            return redirect()->intended($this->redirectPath());
        } else {
            return $this->logout($request);
        }
    }

    public function getValidateToken()
    {

        if (session('2fa:user:id')) {
            return view('2fa/validate');
        }

        return redirect('login');
    }

    public function postValidateToken(ValidateSecretRequest $request)
    {
        //get user id and create cache key
        $userId = $request->session()->pull('2fa:user:id');
        $key    = $userId . ':' . $request->totp;

        //use cache to store token to blacklist
        Cache::add($key, true, 4);

        //login and redirect user
        Auth::loginUsingId($userId);

        return redirect()->intended($this->redirectTo);
    }

    
}
