<?php

namespace App\Models;

use App\Models\Raza;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Caracteristica extends Model
{
    use HasFactory;

    protected $table = 'caracteristicas';
    protected $fillable = ['nombre', 'origen', 'color', 'apariencia_fisica', 'esperanza_vida', 'enfermedades_geneticas', 'historia', 'notas_adicionales', 'raza_id'];

    public function raza()
    {
        return $this->belongsTo(Raza::class);
    }
}
