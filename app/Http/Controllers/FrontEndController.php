<?php

namespace App\Http\Controllers;

use App\Http\Resources\CaracteristicasApiResource;
use App\Models\Caracteristica;
use App\Models\Tag;
use App\Models\Post;
use App\Models\Galeria;
use App\Models\Raza;
use App\Models\Tipo;

class FrontEndController extends Controller
{
    public function index_blog()
    {

        $posts = Post::orderBy('created_at', 'desc')->where('is_published', 1)->get();
        return view('blog_index', compact('posts'));
        // dd($posts);
    }
    public function show_blog($id)
    {
        return view(
            'blog_show',
            ['post' => Post::findOrFail($id)]
        );
    }




    public function indexgaleria()
    {
        $galerias = Galeria::orderBy('created_at', 'desc')->where('is_published', 1)->get();
        return view('galeria_index', compact('galerias'));
        // dd($posts);
    }



    public function index_mascotas()
    {

        $animales = Caracteristica::orderBy('created_at', 'desc')->get();
        return view('animal_index', compact('animales'));
        // dd($animales);
    }
    public function show_mascotas($id)
    {
        return view(
            // dd($animales);
            'animal_show',
            ['animal'  => Caracteristica::findOrFail($id) ]
        );
    }



}
