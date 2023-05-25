<?php

namespace App\Http\Controllers;

use App\Http\Resources\CaracteristicasApiResource;
use App\Models\Caracteristica;
use Illuminate\Http\Request;

class CaracteristicasApiController extends Controller
{
    public function index()
    {
        $caracteristicas = Caracteristica::orderBy('created_at', 'asc')->get();

        return CaracteristicasApiResource::collection($caracteristicas);
    }
    public function show($id)
    {
        $data = Caracteristica::findOrFail($id);
        return ($data);
    }
}
