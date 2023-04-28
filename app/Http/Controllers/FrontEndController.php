<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use Illuminate\Http\Request;

class FrontEndController extends Controller
{
    public function index()
    {
        // return view('blog_index', [
        //     'posts' => Post::orderBy('updated_at', 'asc')->where('is_published', 1)->get(),
        //     'category' => Category::orderBy('updated_at', 'asc')->get(),
            // 'tag'=> Category::class('name')->get(),
        // ]);

        $posts = Post::all()->where('is_published', 1);
        return view('blog_index', compact('posts'));
    }
}
