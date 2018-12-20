<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('absensi', function(){
  $absensi = \App\Absensi::all();
  return $absensi->toJson();
});

Route::post('absensi/insert','AbsenController@store');

Route::get('absensi/favorite', function(){
  	$absensi = \App\Absensi::where('status', 1)->get();
    return $absensi->toJson();
  });

	Route::post('absensi/favorite/update','AbsenController@updateStatus');
