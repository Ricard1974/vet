<?php

namespace App\Http\Controllers;

use App\Models\Post;


class FrontEndController extends Controller
{
    public function index()
    {

        $posts = Post::orderBy('created_at', 'desc')->where('is_published', 1)->get();
        return view('blog_index', compact('posts'));
        // dd($posts);

    }
    public function show($id)
    {

        return view(
            'blog_show',
            ['post' => Post::findOrFail($id)]
        );
    }
}
