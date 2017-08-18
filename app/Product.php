<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    public static function getAll(){
    	return \DB::select('select * from products where ?', [1]);
    }
    public static function getAllWithTypes(){
    	return \DB::select('SELECT p.name , p.weight_type, p.weight, p.img_path, p.sale, p.price, p.sale_price,p.sale_expiration_date, pt.name as type_name  FROM products p, product_types pt WHERE p.type_id = pt.id AND ?', [1]);
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
}
