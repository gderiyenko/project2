<?php

namespace App\Http\Controllers;
use App\Basket;
use App\Product;
use App\User;
use App\ProductType;
use App\BookingQuery;
class BasketController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function list()
    {
    	$userId = \Auth::id();
    	$models = Basket::getAllById($userId);
        $QueryRequest = BookingQuery::getAllUserQueries($userId);
        $summaryCostOfProducts = Basket::getSumCost($userId);
        return view('basket.list', 
                [
                    "userProducts"  => $models, 
                    "allQueries"    => $QueryRequest,
                    "sumCost"       => $summaryCostOfProducts[0]->total
                ]);
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

    public function buyBasket(){
        $userId = \Auth::id();
        $templateName = $_GET['data'];
        var_dump($templateName);
        die();
        //basketQuery
        return BookingQuery::addToQuery($userId, $templateName);
    }

    public function deleteAllById(){
        $userId = \Auth::id();
        $json = $_GET['data'];
        $productId = json_decode($json, true);
        return Basket::deleteFromBasketInfo($userId, $productId);
    }

    public function delete(){
        $userId = \Auth::id();
        return Basket::deleteBasket($userId);
    }
}