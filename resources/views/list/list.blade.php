<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script>
    function myFunction(x) {
        return $.get('/basketadd', {'data': x}, function(response){ console.log(response); });
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
            foreach ($allProducts as $product){
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
                                            output_with_accuracy($product->sale_price, 2);
                                        else
                                            output_with_accuracy($product->price, 2);

                                        echo " for<br>";

                                        output_with_accuracy($product->weight, 1);
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
                                    
                                        if ($product->sale == 1)
                                        {
                                            echo "End of sale: " . $product->sale_expiration_date;
                                        }
                                        

                                    @endphp
                                </p>
                                <div>
                                </div>
                        
                                <a type="button" title="Add to basket" onclick ="myFunction({{$product->id}})">
                                    <i class="material-icons">shopping_cart</i>
                                </a>
                                <a type="button"  title="Quick view">
                                    <i class="material-icons">info_outline</i>
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



