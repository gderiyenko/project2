<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    public static function getAll(){
    	return \DB::select('select * from products where ?', [1]);
    }

    public static function getAllWithTypes(){
    	return \DB::select('SELECT p.*, pt.name as type_name  FROM products p, product_types pt WHERE p.type_id = pt.id AND ?', [1]);
    }

    public static function getByType($typeName){
    	return \DB::select('SELECT p.*, pt.name as type_name  FROM products p, product_types pt WHERE p.type_id = pt.id AND pt.name = ?', [$typeName]);
    }
    
	public function shopId(){

		if (\Auth::user()->role_id == 1){
			return $this->belongsTo(Shop::class);
		}

		$communication = Communication::where("shop_admin_id", \Auth::user()->id)->get();
	    return Shop::where("id", $communication[0]->shop_id)->get();
	}
	public function typeId(){
	    return $this->belongsTo(ProductType::class);
	}
	public function weightType(){
	    return $this->belongsTo(WeightType::class);
	}
	public static function getPriceById($x){
	    return \DB::select('SELECT p.price FROM products p WHERE p.id = ?', [$x]);
	}
}
