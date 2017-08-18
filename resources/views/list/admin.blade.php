@extends('layouts.app')

@section('content')
<br>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    New object
                </div>

                <div class="panel-body">
                     
                    <b>Name:</b> <br>echo Form::text('username');<br>

                    <b>Cost:</b> <br><input type="number" min="0" name="cost"></p><br> 

		            <b>Size:</b> <br><input type="number" min="0" name="size"></p><br>

		            <b>Type:</b>
				    <p><input name="size_type" type="radio" value="1"> Liter</p>
				    <p><input name="size_type" type="radio" value="2"> Kg</p>
				    <p><input name="size_type" type="radio" value="3" checked> g</p>

                    <b>Picture (.jpg):</b>
                    @php
                    	Form::open(['url' => 'foo/bar']);
                    	echo Form::file('image');
                    	Form::close();
					@endphp 

					                          
                </div>
            </div>
        </div>
    </div>
</div>

@endsection