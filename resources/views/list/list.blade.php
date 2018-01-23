
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


<div class="page-container">

    <!-- left panel -->
    <div class="page-sidebar-wrapper" style="position : fixed;">
    <div class="page-sidebar navbar-collapse collapse">
        <ul class="page-sidebar-menu">
            @php
                if ($thisType == "All"){
            @endphp
                <li class="nav-item"><a href=" {{ url('/list') }} ">All</a></li>
            @php
                }else{
            @endphp
                <li class="nav-item"><a href=" {{ url('/list') }} ">All</a></li>
            @php
                }
            @endphp

            <li class="nav-item"><a href="{{url('/list/sale')}}">Sale</a></li>
            <li class="heading">
                <h3 class="uppercase">Types</h3>
            </li>
            @php 
                foreach($allProductTypes as $type)
                if ($type->name == $thisType){
            @endphp
                <li class="nav-item"><a href="\list\{{$type->name}}"> {{$type->name}} </a></li>
            @php
                }else{
            @endphp
                <li class="nav-item"><a href="\list\{{$type->name}}"> {{$type->name}} </a></li>
            @php
                }
            @endphp
        </ul>
    </div>
    </div>

    <!-- Product Zone -->
    <div class="page-content-wrapper">
    <div class="page-content" style="min-height: 1195px;">
            <!-- Find Form -->
            <form class="search-bar bordered page-breadcrumb breadcrumb" method="get" action="/list-find">
                <div class="row">
                    <div class="col-md-7">
                        <div class="input-group">
                            <input type="text" name="findQuery" class="form-control" placeholder="Search for...">
                                <span class="input-group-btn">
                                    <button class="btn blue uppercase bold" type="button submit">Search</button>
                                </span>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <p class="search-desc clearfix"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec efficitur pellentesque auctor. Morbi lobortis, leo in tristique scelerisque. </p>
                    </div>
                </div>
            </form>
    
        <!-- Products list -->
        <div class="row">
            @php
                $incRaw=0;
                foreach ($allProducts as $product){
                ++$incRaw;
                if ($incRaw==5){
                    $incRaw=1;
                    echo '</div><div class="row">';
                }
            @endphp
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                <div class="portlet light portlet-fit bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class=" icon-layers font-green"></i>
                                            <span class="caption-subject font-green bold uppercase">{{ $product->name }}</span>
                                            <div class="caption-desc font-grey-cascade"><pre class="mt-code">@php
                                                    if ($product->sale == 1)
                                                        echo number_format($product->sale_price, 2, '.', '');
                                                    else
                                                        echo number_format($product->price, 2, '.', '');
                                                    @endphp</pre> for @php
                                                    echo number_format($product->weight, 2, '.', '');
                                                    if ($product->weight_type == 1)
                                                        echo " liter";
                                                    else
                                                    if ($product->weight_type == 2)
                                                        echo " kg.";
                                                    else
                                                        echo " gr.";
                                                @endphp</div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="mt-element-overlay" style="height:220;">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="mt-overlay-3 mt-overlay-3-icons">
                                                        <img src="../assets/pages/img/page_general_search/05.jpg">
                                                        <div class="mt-overlay">
                                                            <h2>Overlay Title</h2>
                                                            <ul class="mt-info">
                                                                <li>
                                                                    <a class="btn default btn-outline" href="javascript:;">
                                                                        <i class="icon-magnifier"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a class="btn default btn-outline" href="javascript:;" onclick ="myFunction({{$product->id}})">
                                                                        <i class="icon-plus"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
            @php
                }
            @endphp
        </div>
    </div>
    </div>

</div>
@endsection



