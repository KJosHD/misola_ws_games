<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Score extends Model
{
    // relationship with game
    public function game(): BelongsTo
    {
        return $this->belongsTo(Game::class);
    }

    // relationship with user
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
