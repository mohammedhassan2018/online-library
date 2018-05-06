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

Route::pattern('id', '[0-9]+');

Route::get('/','PagesController@index')->name('index');

Auth::routes();

Route::get('/category/{id}','PagesController@viewCategory')->name('category');

Route::get('/book/{id}','PagesController@viewBook')->name('book');

Route::post('comment/{id}',['uses'=>'PagesController@addComment','middleware'=>'roles','roles'=>['admins','users']])->name('comment');

Route::get('/admin', 'HomeController@index')->name('home');

Route::get('/upload', ['uses'=>'UploadController@index','middleware'=>'roles','roles'=>['admins','users']])->name('upload');

Route::post('/upload', ['uses'=>'UploadController@upload','middleware'=>'roles','roles'=>['admins','users']])->name('upload.save');

Route::group(['prefix'=>'admin','middleware'=>'roles','roles'=>'admins'],function()
{
  Route::resource('users','AdminUsersController');
  Route::resource('categories','AdminCategoryController');
});

Route::delete('del/users/{id}','AdminUsersController@delete' );
Route::delete('del/categories/{id}','AdminCategoryController@delete' );