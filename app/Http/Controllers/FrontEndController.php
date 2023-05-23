<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use App\Models\Post;
use App\Models\Galeria;


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
            'blog_show',['post' => Post::findOrFail($id)]
        );
    }
    public function indexgaleria()
    {
        $galerias = Galeria::orderBy('created_at', 'desc')->where('is_published', 1)->get();
        return view('galeria_index', compact('galerias'));
        // dd($posts);

    }
    

}
