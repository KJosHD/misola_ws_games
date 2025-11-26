<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Models\Admin;
use App\Models\Game;
use App\Models\Score;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/admin', [AdminController::class,'index']);

Route::get('/admin/games', [AdminController::class,'games']);

Route::get('/admin/users', [AdminController::class,'users']);

Route::get('/admin/games/{game:slug}', [GameController::class,'show']);

// block users

Route::get('/admin/users/{username}', function ($username) { 
    $user = User::where('username', $username)->firstOrFail();
    return view('admin.users.show', compact('user'));
});

Route::get('/user/{user}', [UserController::class,'show']);

Route::get('test', function () {
    return User::find(1)->scores;
});

Route::prefix('admin')->name('admin.')->group(function () {
    Route::resource('games', \App\Http\Controllers\GameController::class);
});