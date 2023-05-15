<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Info extends Model
{
    use HasFactory;

    protected $fillable=['empresa','telefono','direccion','mail','copyright','titulo','texto','tituloblog','textoblog'];
}
