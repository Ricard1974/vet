<?php

namespace App\Http\Controllers;

use App\Http\Resources\AnimalesApiResource;
use App\Models\Tipo;
use Illuminate\Http\Request;

class AnimalesApiController extends Controller
{
    public function index()
    {
        // $posts = Post::orderBy('created_at', 'desc')->where('is_published', 1)->get();
        $animales = Tipo::orderBy('created_at', 'asc')->get();

        return AnimalesApiResource::collection($animales);
    }
    public function show($id)
    {
        $data = Tipo::findOrFail($id);
        return ($data);
    }
}
