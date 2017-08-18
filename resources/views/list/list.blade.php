@extends('layouts.app')

@section('content')

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
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                {{ $product->name }} 
                            </div>

                            <div class="panel-body">
                                <img class="product-image" src="/storage/{{$product->img_path}}">
                                <div class="product-price">
                                    <!-- OUTPUT PRICE -->
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
                                    <!-- Sale -->
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
            </div>
        @php
        }
        @endphp
   
@endsection