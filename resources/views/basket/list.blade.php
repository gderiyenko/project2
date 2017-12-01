<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script>
    function AddOne(productId) {
        $.get('/basket-add-one', {'data': productId}, function(response){ console.log(response); });
        location.reload();
    };
    function DeleteOne(productId) {
        $.get('/basket-delete-one', {'data': productId}, function(response){ console.log(response); });
        location.reload();
    };
    function DeleteAll(productId) {
        $.get('/basket-delete-all', {'data': productId}, function(response){ console.log(response); });
        location.reload();
    };
</script>
@extends('layouts.app')

@section('content')
    <!-- function for output product cost -->
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
    @endphp
  
    

    <!-- left panel -->
    <div class="fixed-panel">
        <ul>
            <li class="case"><a href=" {{ url('/list') }} ">All</a></li>
            <li class="case"><a href="{{url('/list/sale')}}">Sale</a></li>
            @php 
                foreach($allProductTypes as $type){
            @endphp
                <li class="case"><a href="\list\{{$type->name}}"> {{$type->name}} </a></li>
            @php
                }
            @endphp
        </ul>
    </div>

    <!-- product zone -->
    <div class="product-zone">
        @php 
            foreach ($userProducts as $product){
        @endphp
    
            
                <div class="product-block">
                    <div>
                        <img class="product-img" src="/storage/{{$product->img_path}}"> 
                        <div class="img-description-layer">
                            <div class="img-description">
                                <!--OUTPUT PRICE-->
                                <p>
                                    @php 
                                        if ($product->sale == 1)
                                            output_with_accuracy($product->sale_price * $product->count, 2);
                                        else
                                            output_with_accuracy($product->price * $product->count, 2);

                                        echo " for<br>";

                                        output_with_accuracy($product->weight * $product->count, 1);
                                        if ($product->weight_type == 1)
                                            echo " l.";
                                        else
                                        if ($product->weight_type == 2)
                                            echo " kg.";
                                        else
                                            echo " gr.   ";

                                        echo "<br>";

                                        echo "\n" . $product->type_name;

                                        echo "<br>";

                                        echo "\n" . $product->count;

                                        echo "<br>";
                                    
                                        if ($product->sale == 1)
                                        {
                                            echo "End of sale: " . $product->sale_expiration_date;
                                        }
                                        

                                    @endphp
                                </p>
                                <div>
                                </div>
                        
                                <a type="button" title="Add to basket" onclick ="AddOne({{$product->id}})">
                                    <i class="material-icons">shopping_cart</i>
                                </a>
                                <a type="button"  title="Delete one" onclick ="DeleteOne({{$product->id}})">
                                    <i class="material-icons">delete</i>
                                </a>
                                <a type="button"  title="Delete all" onclick ="DeleteAll({{$product->id}})">
                                    <i class="material-icons">delete_forever</i>
                                </a>
                            </div>
                        </div>
                        <div class="product-name-zone">
                          <p class="product-name">{{ $product->name }} </p>
                        </div>
                    </div>
                </div>    
        @php
            }
        @endphp
   </div>
@endsection