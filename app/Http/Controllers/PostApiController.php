<?php

namespace App\Http\Controllers;


use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Resources\PostResource;
use App\Http\Resources\PostResource as ResourcesPostResource;

class PostApiController extends Controller
{
    public function index(){
        // $posts = Post::orderBy('created_at', 'desc')->where('is_published', 1)->get();
        $posts = Post::orderBy('created_at', 'desc')->get();
        return PostResource::collection($posts);
}

    public function show($id)
    {
        $data = Post::findOrFail($id);
        return ($data);
    }
}