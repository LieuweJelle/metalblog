<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class Post extends Model
{
    public function comments()
    {
        return $this->hasMany(Comment::class); 
    }
    
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

    public function addComment($title, $body)
    {
        $this->comments()->create(['title' => $title, 'body' => $body, 'post_id' => $this->id, 'user_id' => 1]);//return 
    }
    
    public function disableComment($id)
    {
        /*$post = Post::find($id);
        $post->disabled = true;
        return $post->save();*/
    }
    
    public function scopeFilter($query, $filters)
    {
      if(isset($filters['month'])&& $month = $filters['month'])
      {
        $query->whereMonth('created_at', Carbon::parse($month)->month);
      }
      
      if(isset($filters['year'])&& $year = $filters['year'])
      {
        $query->whereYear('created_at', $year);
      }
    }
    
    public static function archives()
    {
      return static::selectRaw('year(created_at) year, monthname(created_at) month, count(*) published')
        ->groupBy('year', 'month')
        ->orderByRaw('min(created_at) desc')
        ->get()
        ->toArray();
    }

    public static function logos()
    {
      return DB::table('posts')->select('logo', 'id')->orderBy('created_at', 'desc')->get();
    }

}
