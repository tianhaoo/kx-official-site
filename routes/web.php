<?php
use Illuminate\Support\Facades\Input;
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

Route::get('/', 'IndexController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::post('/message', 'MessageController@create');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    Route::post('login', ['uses' => 'Auth\LoginController@login', 'as' => 'voyager.postlogin']);
    Route::get('login', ['uses' => 'Auth\LoginController@showLoginForm', 'as' => 'voyager.login']);
    Route::post('logout', ['uses' => 'Auth\LoginController@logout', 'as' => 'voyager.logout']);
});


