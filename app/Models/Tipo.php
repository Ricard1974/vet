<?php

namespace App\Models;

use App\Models\Raza;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Tipo extends Model
{
    use HasFactory;


    protected $table = 'tipos';
    protected $fillable = ['nombre'];

    public function razas()
    {
        return $this->hasMany(Raza::class);
    }
}
