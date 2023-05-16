<?php

namespace App\Http\Controllers;


use App\Models\Proveedor;
use Illuminate\Http\Request;
use App\Http\Resources\ProveedorResource;


class ProveedorApiController extends Controller
{
    public function index()
    {
        // $posts = Post::orderBy('created_at', 'desc')->where('is_published', 1)->get();

        $proveedor = Proveedor::orderBy('created_at', 'desc')->get();
        return ProveedorResource::collection($proveedor);
    }

    public function show($id)

    {
        $data= Proveedor::findOrFail($id);
        return ($data);

    }
}
