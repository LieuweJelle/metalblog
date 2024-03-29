<?php

namespace App;

use Illuminate\Notifications\Notifiable;
//use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

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

    /*protected $casts = [
        'email_verified_at' => 'datetime' ,
    ];*/
   
    /**
     * The roles that belong to the user.
     */
    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }
    
    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    /*public function agendas()
    {
        return $this->hasMany(Agenda::class);
    }
   */
    public function publish(Post $post)
    {
        return $this->posts()->save($post); //->create([]); user_id automatically applied. UC
    }
    
    /*public function addAgenda($record)
    {
        Comment::create([
          'record' => $record,
          'post_id' => $this->id,
          //'user_id' => 1
        ]);
        
        $this->comments()->create(['record' => $record],);
        
        return $this->agendas()->create(compact('record'));
    }*/
    
    
}
