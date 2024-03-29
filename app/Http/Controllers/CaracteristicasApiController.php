<?php

namespace App\Http\Controllers;

use App\Http\Resources\CaracteristicasApiResource;
use App\Models\Caracteristica;

class CaracteristicasApiController extends Controller
{
    public function index()
    {
        // $caracteristicas = Caracteristica::orderBy('created_at', 'asc')->get();
        $caracteristicas = Caracteristica::all();

        return CaracteristicasApiResource::collection($caracteristicas);
    }
    public function show($id)
    {
        $data = Caracteristica::findOrFail($id);
        return ($data);
    }
}
