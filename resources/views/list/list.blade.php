
<script>
    function AddOne(productId) {
        return $.get('/basket-add-one', {'data': productId}, function(response){ console.log(response); });
    };
    function findQuery() {
        var x = $('.findText').val();
        return $.get('/list-find', {'data': x}, function(response){ console.log(response); });
    };
</script>
@extends('layouts.app')

@section('content')

 @include('blocks.header')

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

    <!-- Zone -->
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

            @include('blocks.product')
                            
            @php
                }
            @endphp
        </div>
    </div>
    </div>

</div>
@endsection



