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

    public function block(User $user, Request $request)
    {
        $request->validate([
            'block_reason' => 'required|string|max:255',
        ]);

        $user->is_blocked = true;
        $user->block_reason = $request->input('block_reason');
        $user->save();

        return redirect()->back()->with('success', 'User blocked successfully.');
    }

    public function unblock(User $user)
    {
        $user->is_blocked = false;
        $user->block_reason = null;
        $user-> save();

        return redirect()->back()->with('success', 'User unblocked successfully.');
    }

}