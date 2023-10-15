<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Blog;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        // DB::table('blogs')->insert([
        //     'title' => 'First blog',
        //     'sub_header' => 'This is the first sub header',
        //     'content' => 'BLOG_CONTENT'
        // ]);

        Blog::factory()
        ->count(1000)
      
        ->create();
    }
}
