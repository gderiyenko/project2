<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::get('/save-template', 'BasketController@addToTemplate');

Route::get('/basket', 'BasketController@list');
Route::get('/basket-add-one', 'BasketController@addOne');
Route::get('/basket-delete-one', 'BasketController@deleteOne');
Route::get('/basket-delete-all', 'BasketController@deleteAllById');
Route::get('/basket-delete', 'BasketController@delete');
Route::get('/basket/{templateName?}', 'BasketController@listByTemplate');

Route::post('/basket-buy', 'PurchasesController@store');

Route::get('/list-find', 'ProductController@listByFind');
Route::get('/', 'ProductController@list');
Route::get('/list', 'ProductController@list');
Route::get('/list/{name?}', 'ProductController@listByType');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
