<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">

@extends('layouts.app')

@section('content')


    <div class="fixed-panel">
        <ul>
            <li class="case"><a href=#>All</a></li>
            <li class="case"><a href=#sale>Sale</a></li>
            @php 
            foreach($allProductTypes as $type)
                echo '<li class="case"><a href="{{$type->name}}">' .  $type->name . "</a></li>";
            @endphp
        </ul>
    </div>
    <div class="product-zone">
    @php 
        
        function output_with_accuracy($arg, $precision)
        {
            $exp = 1;
            for ($i = 1; $i <= $precision; $i++) {
                $exp *= 10; 
            }
            $result = round ($arg * $exp, 0 ,PHP_ROUND_HALF_UP);
            $mod = $result % $exp;
            echo round ($result / $exp, 0 ,PHP_ROUND_HALF_DOWN) . ".". $mod;
        }
        
        foreach ($allProducts as $product){
        @endphp
            
                <div class="product-block">
                    <div >
                        <img class="product-img" src="/storage/{{$product->img_path}}"> 
                        <div class="img-description-layer">
                            <p class="img-description">This image looks super neat.</p>
                        </div>
                        <div class="product-name-zone">
                          <p class="product-name">{{ $product->name }} </p>
                        </div>
                    </div>
                </div>
            
            <!--<div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                {{ $product->name }} 
                            </div>

                            <div class="panel-body">
                                <img class="product-image" src="/storage/{{$product->img_path}}">
                                <div class="product-price">
                                    //OUTPUT PRICE
                                    @php 
                                        if ($product->sale == 1)
                                            output_with_accuracy($product->sale_price, 2);
                                        else
                                            output_with_accuracy($product->price, 2);
                                    @endphp
                                </div>

                                <div class="product-size">
                                    @php 
                                        output_with_accuracy($product->weight, 1);
                                        if ($product->weight_type == 1)
                                            echo "l.";
                                        else
                                            echo "kg.";
                                        echo "\n" . $product->type_name;
                                    @endphp 
                                </div>
                                <div class="product-sale">
                                    //Sale
                                    @php 
                                        if ($product->sale == 1)
                                        {
                                            echo "End of sale: " . $product->sale_expiration_date . "<br>";
                                        }
                                    @endphp 
                                </div>
                                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
        @php
        }
        @endphp
   </div>
@endsection