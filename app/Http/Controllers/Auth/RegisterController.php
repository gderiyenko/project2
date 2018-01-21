<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Mail;

class RegisterController extends Controller
{

    use RegistersUsers;

    // Create a new controller instance.
    public function __construct()
    {
        $this->middleware('guest');
    }
    public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        return $this->registered($request, $user)
            ?: redirect($this->redirectPath());
    }

    public function activateAccount($userId, $hesh){
        if (User::getHeshById($userId) == $hesh){
            User::activate($userId);
        }
            
    }

    // Get a validator for an incoming registration request.
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed'
        ]);
    }

    //Create a new user instance after a valid registration.
    protected function create(array $data)
    {
        User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password'])
        ]);

        $email = $data['email'];
        $date = new \DateTime();
        $date->modify("+2 hours");
        Mail::send('emails.activate', 
            [
                'take_time'=>$date->format('Y-m-d H:i:s'), 
                'link'=>"aga.loc:8000/activation/".User::getId($email)."/".User::getHeshByEmail($email),
            ],  
            function ($message) use ($email) {
                $message->from('us@example.com', 'Laravel');
                $message->to($email);
        });
        
    }

}
