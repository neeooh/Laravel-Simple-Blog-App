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

Route::get('/', 'PagesController@index');
route::get('/about', 'PagesController@about');
route::get('/services', 'PagesController@services');

Route::resource('posts', 'PostsController');

/*
route::get('/about', function(){
    // notice the dot syntax insted of slash
    return view('pages.about');
});

Route::get('/', function () {
    //returns a view
    return view('welcome');
});

Route::get('/hello', function () {
    //or we can return something else
    return '<h1>hello world!</h1>';
});

Route::get('/phptest', function () {
    //or we can return something else
    return phpinfo().'';
});



route::get('/users/{id}', function($id){
    // string concatination using the dot
    return 'This is user: ' . $id;
});

route::get('/users/{id}/{name}', function($id, $name){
    // string concatination using the dot
    return 'This is user: '.$name.' with an id of '.$id;
});
*/
Auth::routes();

Route::get('/dashboard', 'DashboardController@index')->name('home');
