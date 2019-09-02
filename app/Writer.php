<?php

namespace App;

use Illuminate\Notifications\Notifiable;
//use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Writer extends Authenticatable
{
    use Notifiable;

    /**
     * @var string
     */
    protected $guard = 'writer';
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'firstname', 'lastname', 'telephone', 'street', 'streetnumber', 'zipcode', 'place', 'intro', 'password'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function publish(Post $post)
    {
        return $this->posts()->save($post);
    }
}