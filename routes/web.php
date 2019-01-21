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
use Twilio\sdk;

use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/getdebug', function (Request $request) {
	Log::info('getrequest',['request' => $request]);
    dd($request);
});

Route::post('/postdebug', function (Request $request) {
	Log::info('getrequest',['request' => $request]);
    dd($request);
});

Route::get('/debugsendsms', function (Request $request) {
// Send an SMS using Twilio's REST API and PHP
$sid = env('TWILIO_SID'); // Your Account SID from www.twilio.com/console
$token = env('TWILIO_TOKEN'); // Your Auth Token from www.twilio.com/console

$client = new Twilio\Rest\Client($sid, $token);
$message = $client->messages->create(
  env('TWILIO_PHONE_TO'), // Text this number
  array(
    'from' => env('TWILIO_PHONE_FROM'), // From a valid Twilio number
    'body' => 'Hello from Twilio! We are go.'
  )
);

print $message->sid;

});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
