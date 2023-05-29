<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostApiController;
use App\Http\Controllers\AnimalesApiController;
use App\Http\Controllers\ProveedorApiController;
use App\Http\Controllers\CaracteristicasApiController;
use App\Http\Resources\CaracteristicasApiResource;
use App\Models\Caracteristica;
use App\Models\Tipo;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/animales', [CaracteristicasApiController::class, 'index']);
Route::get('/post', [PostApiController::class, 'index']);
Route::get('/post/{id}', [PostApiController::class, 'show']);
Route::get ('/proveedor',[ProveedorApiController::class,'index']);
Route::get ('/proveedor/{id}',[ProveedorApiController::class,'show']);