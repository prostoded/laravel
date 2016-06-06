<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
/*Все, что ниже - обязательно последние записи в файле*   ? - cимвол того, что параметр не обязателен/
/*Route::get('/', function () {
    return view('welcome');
});*/





Route::get('/home', 'HomeController@index');

Route::group (['middleware'=>'web'], function (){
Route::auth();
Route::get('{id?}', array(
    'uses'=>'BaseController@getIndex'
))-> where ('id', '[А-я0-9A-z_ ]+');
});

