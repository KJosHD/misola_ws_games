<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Game; 

class AdminController extends Controller
{
    public function index(){
        $admin_users = Admin::all();
        return view('admin.index', compact('admin_users'));
    }

    public function users(){
        $admin_users = Admin::all();
        return view('admin.users.index', compact('admin_users'));
    }

    public function games(){
        $games = Game::all();
        return view('admin.games.index', compact('games'));
    }
}
