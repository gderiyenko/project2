<?php

namespace App\Http\Controllers;
use App\Basket;
use App\Product;
use App\User;
use App\Template;
use App\ProductType;
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
        $TemplatesRequest = Template::getAllTemplates($userId);
        return view('basket.list', ["userProducts" => $models, "allTemplates"=>$TemplatesRequest, "thisTemplate"=>"Your Basket"]);
    }

    public function listByTemplate($templateName)
    {
        $userId = \Auth::id();
        $templateId = Template::getIdByName($userId, $templateName);
        $templateId = $templateId[0]->id;//////
        $ProductRequest = Product::getByTemplate($templateId);
        $TemplatesRequest = Template::getAllTemplates($userId);
        return view('basket.list', ["userProducts" => $ProductRequest, "allTemplates"=>$TemplatesRequest, "thisTemplate"=>$templateName]);
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

    public function addToTemplate(){
        $userId = \Auth::id();
        $templateName = $_GET['data'];
        return Template::createTemplate($userId, $templateName);
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