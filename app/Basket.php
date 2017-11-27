<?php

namespace App;
use Illuminate\Database\Eloquent\Model;


class Basket extends Model
{
    public static function getAllById($userId)
    {
    	return \DB::select('SELECT id, sum_cost, status FROM baskets b WHERE (b.status = ?  OR b.status = ?) AND (b.number > ?) AND (b.user_id = ?) ;', [2, 3, 0, $userId]);
    }
    public function Status(){
	    return $this->belongsTo(BasketStatus::class);
	}
	public static function addToBasket($userId, $productId, $productPrice){
		 \DB::table('basket_infos')->insertGetId(
		    ['user_id' => $userId,
		     'product_id' => $productId,
		     'product_price' => $productPrice
		    ]
		);
		/*
		return \DB::query('INSERT INTO basket_infos 
			(user_id, product_id, product_price) 
			VALUES (?, ?, ?);', [$userId, $productId, $productPrice]) ;*/
	}

}
