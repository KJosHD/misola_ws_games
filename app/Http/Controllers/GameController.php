<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Score;
use App\Models\Game;
use App\Models\Admin;

class GameController extends Controller
{
    public function index(Request $request){
        $search = $request->input('search');

        $games = Game::when($search, function($query, $search){
            $query->where('title', 'LIKE', '%' . $search . '%')
                  ->orWhere('description', 'LIKE', '%' . $search . '%');
        })
        ->paginate(10)
        ->withQueryString();

        return view('admin.games.index', compact('games'));
    }
    
    public function show(Game $game){
        return view('admin.games.show', compact('game'));
    }

    public function destroy(Game $game){
        $game->delete();
        return redirect()->route('admin.games.index')->with('success','Game deleted successfully.');
    }
}
