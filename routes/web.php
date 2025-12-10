<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\AdminAuthController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Models\Game;

Route::get('/', function () {
    return view('welcome');
});

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', function () {
        $games = Game::with(['author', 'scores'])->get();
        return view('dashboard', compact('games'));
    })->middleware('auth')->name('dashboard');
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::middleware('guest:admin')->group(function () {
    Route::get('/admin/login', function () {
        return view('admin.auth.login');
    })->name('admin.login');

    Route::post('/admin/login', [AdminAuthController::class, 'login']);

    Route::get('/admin/login', function(){
        return view('admin.auth.login');
    })->name('admin.login');
});

Route::middleware('auth:admin')->group(function () {

    // Admin dashboard
    Route::get('/admin', [AdminController::class, 'index']);

    // Platform users
    Route::get('/admin/users', [UserController::class, 'index']);
    Route::get('/admin/users/{user}', [UserController::class, 'show']);
    Route::put('/admin/users/{user}/block', [UserController::class, 'block']);
    Route::put('/admin/users/{user}/unblock', [UserController::class, 'unblock']);

    // Games
    Route::get('/admin/games', [GameController::class, 'index']);
    Route::get('/admin/games/{game}', [GameController::class, 'show']);
    Route::delete('/admin/games/{game}', [GameController::class, 'destroy']);

    // Admin logout
    Route::post('/admin/logout', [AdminAuthController::class, 'logout'])->name('admin.logout');
});

