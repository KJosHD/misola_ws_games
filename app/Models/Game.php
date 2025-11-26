<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
# use Illuminate\Database\Eloquent\SoftDeletes;

class Game extends Model
{
    protected $fillable = ['title', 'description', 'author_id', 'slug'];

    # use SoftDeletes;

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'author_id');
    }   
    public function scores()
    {
        return $this->hasMany(Score::class);
    }
    public function topScores(){
        return $this->scores()->orderByDesc('score')
        ->limit(10);
    }
}

