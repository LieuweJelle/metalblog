<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
//use Illuminate\Contracts\Routing\UrlGenerator;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('posts.sidebar', function($view){
            //$view->with('archives', \App\Post::archives()); 
            //$view->with('roles', \App\Role::has('users')->pluck('name'));
            $logos = \App\Post::logos();
            $archives = \App\Post::archives();
            $roles = \App\Role::has('users')->pluck('name');
            $tags = \App\Tag::has('posts')->pluck('name');
            $view->with(compact('logos', 'archives', 'roles', 'tags'));
          });
        Schema::defaultStringLength(191);
    }

}
