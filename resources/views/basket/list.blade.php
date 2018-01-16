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
    function DeleteBasket(TemplateName) {
        $.get('/basket-delete', {'data': TemplateName}, function(response){ console.log(response); });
        location.reload();
    };

    function BuyBasket(TemplateName) {
        $.get('/basket-buy', {'data': TemplateName}, function(response){ console.log(response); });
        location.reload();
    };
</script>
@extends('layouts.app')

@section('content')
  
    
<div class="basic-zone">
    <!-- left panel -->
    <div class="fixed-panel">
        <ul>
            <li class="case"><a href=" {{ url('/list') }} ">Shop</a></li>
            
                <li class="case card cyan"><a href="{{url('/basket')}}">Your Basket</a></li>
            <hr>
            Orders 
            @php 
                foreach($allQueries as $query){
            @endphp
                <div>
                    <li class="case">Time: {{$query->created_at}}</li>
                    <li class="case">Order code: {{$query->booking_code}} </li>
                </div>
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
                                        if ($product->sale == 1){
                                            echo number_format($product->sale_price * $product->count, 2, '.', '');
                                        }
                                        else{
                                            echo number_format($product->price * $product->count, 2, '.', '');
                                        }  

                                        echo " for<br>";

                                        echo number_format($product->weight * $product->count, 2, '.', '');
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
                        
                                <button class="btn cyan" title="Add to basket" onclick ="AddOne({{$product->id}})">
                                    <i class="material-icons">shopping_basket</i>
                                </button>
                                <button class="btn red"  title="Delete one" onclick ="DeleteOne({{$product->id}})">
                                    <i class="material-icons">delete</i>
                                </button>
                                <button class="btn black"  title="Delete all" onclick ="DeleteAll({{$product->id}})">
                                    <i class="material-icons">delete_forever</i>
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

            if (count($userProducts) == 0){
            	echo '<div class="info-card">';
            	echo '<p style="text-align: center; margin: 10% 0 0 0;"> There are nothing in the Basket... </p>';
            	echo '<a href="/list" ><p style="text-align: center;">Back to shopping</p></a>';
            	echo '<br></div>';
        	}
        	else{ 
        @endphp
		    <hr>
		    <div class="info-card">
		    	<div class="right">
		    		<h2>Summary: @php echo number_format($sumCost , 2, '.', ''); @endphp usd. </h2>

		    	</div>
		    	<button class="btn cyan right bottom" title="Buy Basket" onclick ="BuyBasket()">
	            	<i class="material-icons">shopping_cart</i>
	            	Buy this Basket
	            </button>
		    </div>
	    @php 
            }
        @endphp

        <hr>
        
        <div class="info-card">
	        <div class="right bottom">
	        	<a onclick="showForm()">
		            <button class="btn cyan" >
		            	<i class="material-icons">assignment</i>
		            	Create the template
		            </button>
	        	</a>

	        	<button class="btn black" title="Delete this Basket" onclick ="DeleteBasket()">
	            	<i class="material-icons">delete</i>
	            	Delete All
	            </button>
	        </div>
	    </div>
        
        <hr>
         @php
            $sumCost= $sumCost * 100;
        @endphp
        
        <div class="info-card">
            <form action="/basket-buy" method="POST">
                {{csrf_field()}}
              <script
                src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                data-key="{{ config('services.stripe.key') }}"
                data-amount="{{$sumCost}}"
                data-name="Your Basket"
                data-description="Widget"
                data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
                data-locale="auto">
              </script>
            </form>
        </div>
   </div>
</div>
@endsection