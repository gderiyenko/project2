<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ProductType extends Model
{
    public static function getAll(){
    	return \DB::select('select id, name from product_types where ?', [1]);
    }
}
