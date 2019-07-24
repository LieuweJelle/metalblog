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

Route::get('/', function () {
    return view('welcome');
});
*/

Route::resource('posts', 'PostsController');
//Route::get('/', 'BlogsController@index');
Route::get('/', 'PagesController@index');
Route::get('/about', 'PagesController@about');
Route::get('/services', 'PagesController@services');

Route::get('/posts/tags/{tag}', 'TagsController@index');

Route::post('/posts/{post}/comments', 'CommentsController@store');
Route::get('/posts/comments/{comment}', 'CommentsController@destroy');






Route::fallback(function () {
    return 'Sorry Mike! This page does not exist.';    //'. auth()->user()->name . '
});