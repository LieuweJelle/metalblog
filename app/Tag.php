<?php

namespace App;

class Tag extends Model
{
    public $timestamps = false;
    
    public function posts()
    {
        return $this->belongsToMany(Post::class);
    }

    public function getRouteKeyName()
    {
        return 'name';
    }
    public static function genres()
    {
      return DB::table('tags')->select('logo', 'id')->orderBy('created_at', 'desc')->get();
    }

}
