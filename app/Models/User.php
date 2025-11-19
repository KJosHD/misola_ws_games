<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    public function getRouteKeyName() {
        return 'username';
    }

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    public function games()
    {
        return $this->hasMany(Game::class, 'author_id');
    }

    public function scores()
    {
        return $this->hasMany(Score::class);
    }

    public function playedGames()
    {
        return $this->belongsToMany(Game::class, 'scores');
    }

    public function isAdmin()
    {
        return $this->hasOne(Admin::class);
    }
    
    public function isAuthorOf(Game $game)
    {
        return $this->id === $game->author_id;
    }

    public function isBlocked()
    {
        return $this->is_blocked;
    }

    public function block()
    {
        $this->is_blocked = true;
        $this->save();
    }

    public function unblock()
    {
        $this->is_blocked = false;
        $this->save();  
    }
    
}