<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">

@extends('layouts.app')

@section('content')

    <!-- left panel -->
    <div class="fixed-panel">
        <ul>
            <li class="case"><a href=" {{ url('/list') }} ">All</a></li>
            <li class="case"><a href="{{url('/list/sale')}}">Sale</a></li>
            <hr>
            
        </ul>
    </div>

    <!-- Product Zone -->
    <div class="product-zone">

    <!-- Find Form -->
    <form method="get" action="/list-find">
        <input type="text" name="findQuery" style="width:60%; margin: 0 2%;" placeholder="Введите здесь слово, которое нужно найти..." required>
        <input type="submit" />
    </form>

    <h1>
        Oops! Operation is blocked.
    </h1>
    <h3>
        Something going wrong. Please, try another card or repeat that later.
    </h3>
    <a></a>
    
   </div>
@endsection



