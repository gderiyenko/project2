<?php

namespace App;
use Illuminate\Database\Eloquent\Model;


class BookingQuery extends Model
{
	public static function generateRandomCode() {
		$length = 13;
	    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	    $charactersLength = strlen($characters);
	    $randomString = '';
	    for ($i = 0; $i < $length; $i++) {
	        $randomString .= $characters[rand(0, $charactersLength - 1)];
	    }
	    return $randomString;
	}

	public static function getAllUserQueries($userId) {
		$x= \DB::select("SELECT DISTINCT bq.created_at, bq.booking_code FROM booking_query bq WHERE (bq.user_id = ?);", [$userId]);
		return $x;
	}

    public static function addToQuery($userId, $templateName){
    	if ($templateName == "Your Basket"){
    		// add to query
    		$code = BookingQuery::generateRandomCode();
	    	return \DB::insert("INSERT INTO booking_query (user_id, product_id, count, booking_code, created_at) 
								SELECT user_id, product_id, count, '{$code}' , SYSDATE() 
								FROM basket_infos bi 
								WHERE (bi.user_id = ?) AND (bi.status = ?);",
						[$userId, 1]);
	    }else{
	    	$code = BookingQuery::generateRandomCode();
	    	$y = \DB::select("SELECT t.* FROM templates t WHERE (t.name = ?) AND (t.user_id = ?);", [$templateName, $userId]);
	    	var_dump($y);
	    	$x=\DB::insert("INSERT INTO booking_query (user_id, product_id, count, booking_code, created_at) 
							SELECT user_id, product_id, count, '{$code}' , SYSDATE() 
							FROM template_infos ti 
							WHERE (ti.user_id = ?) AND (ti.template_id = ?);",
						[$userId, $y[0]->id]);
	    	var_dump($x);
	    	return $x;
	    }
    }

}
