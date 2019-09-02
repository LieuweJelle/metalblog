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
//Route::get('/', 'BlogsController@index');
Route::get('/', 'PagesController@index');
Route::get('/about', 'PagesController@about');
Route::get('/services', 'PagesController@services');

Route::resource('posts', 'PostsController');
Route::get('/posts/disableComment/{id}', 'PostsController@disableComment');
Route::post('/posts/search', 'PostsController@search');

Route::get('/posts/tags/{tag}', 'TagsController@index');

Route::post('/posts/{post}/comments', 'CommentsController@store');
Route::get('/posts/comments/{comment}', 'CommentsController@destroy');

Auth::routes(['verify' => true]); //'register'=> false, 

Route::get('/login/admin', 'Auth\LoginController@showAdminLoginForm');
Route::get('/login/writer', 'Auth\LoginController@showWriterLoginForm');
Route::get('/register/admin', 'Auth\RegisterController@showAdminRegisterForm');
Route::get('/register/writer', 'Auth\RegisterController@showWriterRegisterForm');

Route::post('/login/admin', 'Auth\LoginController@adminLogin');
Route::post('/login/writer', 'Auth\LoginController@writerLogin');
Route::post('/register/admin', 'Auth\RegisterController@createAdmin');
Route::post('/register/writer', 'Auth\RegisterController@createWriter');

Route::view('/home', 'home')->middleware('auth');
Route::view('/admin', 'admin');
Route::view('/writer', 'writer');

Route::get('/home', 'HomeController@index'); //->name('home');

Route::get('/tasks', 'TasksController@index');
Route::get('/tasks/{task}', 'TasksController@show');

Route::get('users/indexall', '\App\Http\Controllers\UserController@indexall');
Route::resource('/users', 'UserController');
Route::get('users/{id}/delete', 'UserController@delete');

Route::get('/users/roles/{role}', 'RolesController@index');

Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');

Route::get('/search', 'JoinTableController@index');


Route::fallback(function () {
    return 'Sorry Mike! This page does not exist... yet .';    //'. auth()->user()->name . '
});
