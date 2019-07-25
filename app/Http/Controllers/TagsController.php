<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tag;

class TagsController extends Controller
{
    public function index(Tag $tag) 
    {
      //return $tag; //http://senior.lar/posts/tags/laravel
      $posts = $tag->posts;
      return view('posts.index', compact('posts'));
    }

}