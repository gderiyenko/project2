<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token', 'google2fa_secret',
    ];

    public static function getHeshById($userId){
        $str = \DB::select('SELECT u.created_at FROM users u WHERE id = ?;', [$userId]);
        // my hesh
        $str =  substr(md5(strval($str[0]->created_at)), 0, -1) . 'y' . md5($userId); 
        return $str;
    }

    public static function getHeshByEmail($email){
        $userId = \DB::select('SELECT u.id FROM users u WHERE email = ?;', [$email]);
        return User::getHeshById($userId[0]->id);
    }
    public static function getId($email){
        $userId = \DB::select('SELECT u.id FROM users u WHERE email = ?;', [$email]);
        return $userId[0]->id;
    }

    public static function activate($userId){
        return \DB::select('UPDATE users u SET u.active = 1 WHERE (u.id = ?);', [$userId]);
    }
}
