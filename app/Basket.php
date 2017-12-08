<?php

namespace App;
use Illuminate\Database\Eloquent\Model;


class Basket extends Model
{
    public static function getAllById($userId)
    {
    	return \DB::select('SELECT p.*, pt.name as type_name, bi.count FROM products p, basket_infos bi,product_types pt
    	 WHERE (p.type_id = pt.id) AND (p.id = bi.product_id) AND (bi.status = ?) AND (bi.count > ?) AND (bi.user_id = ?) ;', [1, 0, $userId]);
    }

    public function Status(){
	    return $this->belongsTo(BasketStatus::class);
	}

	public static function addToBasketInfo($userId, $productId){
		$rawId = \DB::select('SELECT id FROM basket_infos bi WHERE (bi.user_id = ?) and (bi.product_id = ?) AND (bi.status = ?);', [$userId, $productId, 1]);
		if (count($rawId) == 0){
			$date = new \DateTime();
			echo $date->format('Y-m-d H:i:s') . "\n";
			\DB::table('basket_infos')->insertGetId(
			    [
			     'user_id' => $userId,
			     'product_id' => $productId,
			     'created_at' => $date->format('Y-m-d H:i:s'),
			     'count' => 1,
			     'status' => 1
			    ]
			);
		}
		else
			\DB::select('UPDATE basket_infos bi SET bi.count = bi.count+1 WHERE (bi.user_id = ?) AND (bi.product_id = ?);', [$userId, $productId]);
		return 1;
	}

	public static function deleteOneFromBasketInfo($userId, $productId){
		\DB::select('UPDATE basket_infos bi SET bi.count = bi.count-1 WHERE (bi.user_id = ?) AND (bi.product_id = ?) AND (bi.status = ?);', [$userId, $productId, 1]);
	}

	public static function deleteFromBasketInfo($userId, $productId){
		\DB::select('UPDATE basket_infos bi SET bi.status = 2 WHERE (bi.user_id = ?) AND (bi.product_id = ?) AND (bi.status = ?);', [$userId, $productId, 1]);
	}

	public static function deleteBasket($userId){
		\DB::select('UPDATE basket_infos bi SET bi.status = 2 WHERE (bi.user_id = ?) AND (bi.status = ?);', [$userId, 1]);
	}
	

}
