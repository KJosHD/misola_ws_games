<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    protected $fillable = ['title', 'description', 'author_id'];

    public function author()
    {
        return $this->belongsTo(User::class, 'author_id');
    }   
    public function scores()
    {
        return $this->hasMany(Score::class);
    }
}

