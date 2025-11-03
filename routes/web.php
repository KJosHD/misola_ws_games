<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Route for viewing Admin users

Route::get('/admin', function () {
    return view('admin.index');
});

// Route for viewing Platform userss

Route::get('/admin/users', function () {
    return "<h1>Platform Users</h1>";
});

Route::get('/admin/users/{username}', function ($username) {
    return "<h1>$username</h1>";
});

Route::get('/admin/games', function () {
    return "<h1>Games</h1>";
});

Route::get('/admin/games/{slug}', function ($game) {
    return "<h1>$game</h1>";
});

// block users

Route::get('/admin/users/{username}', function ($username) {
    return "<h1>$username</h1>";
});

