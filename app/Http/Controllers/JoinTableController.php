<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Comment;

class JoinTableController extends Controller
{
    function index()
    {
        $query = DB::table('posts')
        ->join('comments', 'comments.post_íd', '=', 'posts.id')
        ->select('posts.title','posts.body','posts.subtitle','posts.subbody','comments.body as second_body','comments.title as second_title')
        ->get();
        return view('search', compact('query'));
    }
}
