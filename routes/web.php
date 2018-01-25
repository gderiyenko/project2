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


Auth::routes();

Route::get('send_test_email', function(){
    Mail::raw('Sending emails with Mailgun and Laravel is easy!', function($message)
    {
        $message->to('johndofredse@gmail.com');
    });
});

Route::get('/home', 'HomeController@index');

Route::get('/list-find', 'ProductController@listByFind');
Route::get('/', 'ProductController@list');
Route::get('/list', 'ProductController@list');
Route::get('/list/{name?}', 'ProductController@listByType');

Route::get('/basket', 'BasketController@list');
Route::get('/basket-add-one', 'BasketController@addOne');
Route::get('/basket-delete-one', 'BasketController@deleteOne');
Route::get('/basket-delete-all', 'BasketController@deleteAllById');
Route::get('/basket-delete', 'BasketController@delete');

Route::post('/basket-buy', 'PurchasesController@store');

// google 2fa
 Route::get('/2fa/enable', 'Google2FAController@enableTwoFactor');
 Route::get('/2fa/disable', 'Google2FAController@disableTwoFactor');
 Route::get('/2fa/validate', 'Auth\LoginController@getValidateToken');
 Route::post('/2fa/validate', ['middleware' => 'throttle:5', 'uses' => 'Auth\LoginController@postValidateToken']);

//activation
 Route::get('/activation', 'Auth\RegisterController@sendActivationMail');
 Route::get('/activation/{userId?}/{hesh?}', 'Auth\RegisterController@activateAccount');



