<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\GamesController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/admin', [AdminController::class,'index']);

Route::get('/admin/games', [AdminController::class,'games']);

Route::get('/admin/users', [AdminController::class,'users']);


Route::get('/admin/games/{slug}', function ($game) {
    return "<h1>$game</h1>";
});

// block users

Route::get('/admin/users/{username}', function ($username) {
    return "<h1>$username</h1>";
});

