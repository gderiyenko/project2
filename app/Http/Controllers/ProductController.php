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
    	$models = Product::getAllWithTypes();
        return view('list.list', ["allProducts" => $models]);
    }

    public function addProduct()
    {
        return view('list.admin');
    }
}