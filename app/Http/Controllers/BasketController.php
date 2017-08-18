<?php

namespace App\Http\Controllers;
use App\Basket;
use App\User;
class BasketController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function list()
    {
    	$id = \Auth::id();
    	$models = Basket::getAllById($id);
        var_dump($models);
        die();
        return view('basket.list');
    }
}