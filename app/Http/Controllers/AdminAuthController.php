<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminAuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->only('username', 'password');

        if (Auth::guard('admin')->attempt($credentials)) {
            return redirect()->intended('/admin');
        }

        return back()->withErrors([
            'email' => 'Invalid credentials.'
        ]);
    }
    public function logout(Request $request){
        Auth::guard('admin')->logout();
        // Invalidate session and regenerate CSRF token
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/admin/login');
    }
}