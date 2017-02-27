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

Route::get('/', 'LoginController@login');

Route::get('/register', 'RegistrationController@register');

Route::post('/register', 'RegistrationController@registerNow');

Route::get('/login', 'LoginController@login');

Route::post('/', 'LoginController@logNow');

Route::post('/logout', 'LoginController@logout');

Route::get('/department/{id}', 'DepartmentController@showCommittes');

Route::get('/committes/{id}', 'CommitteController@find');

Route::post('/vote', 'VoteController@voting');

Route::get('/graphics/{id}', 'VoteController@graphics_find');

Route::post('/makeGraphic/{id}', 'VoteController@make_graphic');

Route::get('/services', 'Service@service');

Route::post('/getVisitors', 'VoteController@get_visitors');

Route::post('/getCountry', 'UserController@getCountry');