<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Game; 
use App\Models\User;

class AdminController extends Controller
{
    public function index(){
        $admin_users = Admin::all();
        return view('admin.index', compact('admin_users'));
    }

    public function users(){
    $users = User::all();
    return view('admin.users.index', compact('users'));
    }

    public function games(){
        $games = Game::all();
        return view('admin.games.index', compact('games'));
    }
}
