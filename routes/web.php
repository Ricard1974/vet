<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\FrontEndController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/galeria', [FrontEndController::class, 'indexgaleria'])->name('galeria_index');

Route::get('/timeline', function () {
    return view('timeline');
});
Route::get('/infoapi', function () {
    return view('infoapi');
});


Route::get('contact', [ContactController::class, 'showcontact'])->name('contact.show');
Route::post('contact', [ContactController::class, 'submitcontact'])->name('contact.submit');

Route::prefix('/blog')->group(function () {
    Route::get('/', [FrontEndController::class, 'index'])->name('blog_index');
    Route::get('/{id}', [FrontEndController::class, 'show'])->name('blog_show');
});
