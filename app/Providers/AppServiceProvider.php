<?php

namespace App\Providers;

use App\Mail\WelcomeUser;
use App\Models\Blog;
use App\Models\User;
use App\Observers\BlogObserver;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\DB;
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
        Blog::observe(BlogObserver::class);
        // $notifications = DB::table('notifications')->get('id');
        // User::created(function($user){
        //     Mail::to($user)->send(new WelcomeUser($user));


        // });

        // view()->share('notifications',$notifications);

    }
}
