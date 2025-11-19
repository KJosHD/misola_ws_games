<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Score extends Model
{
    // relationship with game
    public function game(): HasMany
    {
        return $this->hasMany(Game::class);
    }

    // relationship with user
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
