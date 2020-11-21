<?php

use Illuminate\Support\Facades\Route;

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
Route::get('/', 'App\Http\Controllers\MainController@menu')->name('home');
Route::get('cadastro', 'App\Http\Controllers\MainController@registerPerson')->name('register');
Route::get('vincular-tarefa', 'App\Http\Controllers\MainController@registerTask')->name('link');
Route::post('insert-task', 'App\Http\Controllers\MainController@insertTask');

