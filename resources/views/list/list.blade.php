<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script>
    function myFunction(productId) {
        return $.get('/basket-add-one', {'data': productId}, function(response){ console.log(response); });
    };
    function findQuery() {
        var x = $('.findText').val();
        return $.get('/list-find', {'data': x}, function(response){ console.log(response); });
    };
</script>
@extends('layouts.app')

@section('content')

    <!-- left panel -->
    <div class="fixed-panel">
        <ul>
            @php
                if ($thisType == "All"){
            @endphp
                <li class="case card cyan"><a href=" {{ url('/list') }} ">All</a></li>
            @php
                }else{
            @endphp
                <li class="case"><a href=" {{ url('/list') }} ">All</a></li>
            @php
                }
            @endphp

            <li class="case"><a href="{{url('/list/sale')}}">Sale</a></li>
            <hr>
            Types
            @php 
                foreach($allProductTypes as $type)
                if ($type->name == $thisType){
            @endphp
                <li class="case card cyan"><a href="\list\{{$type->name}}"> {{$type->name}} </a></li>
            @php
                }else{
            @endphp
                <li class="case"><a href="\list\{{$type->name}}"> {{$type->name}} </a></li>
            @php
                }
            @endphp
        </ul>
    </div>

    <!-- Product Zone -->
    <div class="product-zone">

    <!-- Find Form -->
    <form method="get" action="/list-find">
        <input type="text" name="findQuery" style="width:60%; margin: 0 2%;" placeholder="Введите здесь слово, которое нужно найти..." required>
        <input type="submit" />
    </form>

    <!-- Products list -->
    
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
                                            echo number_format($product->sale_price, 2, '.', '');
                                        else
                                            echo number_format($product->price, 2, '.', '');

                                        echo " for<br>";

                                        echo number_format($product->weight, 2, '.', '');
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
                        
                                <button class="btn cyan" title="Add to basket" onclick ="myFunction({{$product->id}})">
                                    <i class="material-icons">shopping_basket</i>
                                </button>
                                <button class="btn black" title="Quick view">
                                    <i class="material-icons">info_outline</i>
                                </button>
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



