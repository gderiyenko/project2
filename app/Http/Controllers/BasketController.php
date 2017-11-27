<?php

namespace App\Http\Controllers;
use App\Basket;
use App\Product;
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
    
    public function addOne(){
        $userId = \Auth::id();

        $json = $_GET['data'];
        $productId = json_decode($json, true);

        $productPriceRaw = Product::getPriceById($productId);
        $productPrice = $productPriceRaw[0]->price;

        return Basket::addToBasket($userId, $productId, $productPrice);
    }
}