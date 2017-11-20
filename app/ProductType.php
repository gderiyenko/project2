<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ProductType extends Model
{
    public static function getAllTypes(){
    	return \DB::select('select id, name from product_types where ?', [1]);
    }
}
