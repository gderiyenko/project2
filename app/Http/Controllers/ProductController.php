<?php

namespace App\Http\Controllers;
use App\Product;
use App\ProductType;
class ProductController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function list()
    {
    	$ProductRequest = Product::getAllWithTypes();
    	$ProductTypeRequest = ProductType::getAllTypes();
        return view('list.list', ["allProducts" => $ProductRequest, "allProductTypes"=>$ProductTypeRequest, "thisType"=>"All"]);
    }

    public function listByType($productTypeName)
    {
        $ProductRequest = Product::getByType($productTypeName);
        $ProductTypeRequest = ProductType::getAllTypes();
        return view('list.list', ["allProducts" => $ProductRequest, "allProductTypes"=>$ProductTypeRequest, "thisType"=>$productTypeName]);
    }

}