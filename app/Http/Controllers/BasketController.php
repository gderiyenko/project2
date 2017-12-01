<?php

namespace App\Http\Controllers;
use App\Basket;
use App\Product;
use App\User;
use App\ProductType;
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
        $ProductTypeRequest = ProductType::getAllTypes();
        return view('basket.list', ["userProducts" => $models, "allProductTypes"=>$ProductTypeRequest]);
    }
    
    public function addOne(){
        $userId = \Auth::id();
        $json = $_GET['data'];
        $productId = json_decode($json, true);
        return Basket::addToBasketInfo($userId, $productId);
    }

    public function deleteOne(){
        $userId = \Auth::id();
        $json = $_GET['data'];
        $productId = json_decode($json, true);
        return Basket::deleteOneFromBasketInfo($userId, $productId);
    }

    public function deleteAllById(){
        $userId = \Auth::id();
        $json = $_GET['data'];
        $productId = json_decode($json, true);
        return Basket::deleteFromBasketInfo($userId, $productId);
    }
}