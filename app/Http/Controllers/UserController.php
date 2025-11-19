<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Score;
use App\Models\Game;
use App\Models\Admin;

class UserController extends Controller
{
    public function show($user)
    {
        return view('admin.users.show',compact('user'));
    }
}