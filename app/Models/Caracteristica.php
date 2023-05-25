<?php

namespace App\Models;

use App\Models\Raza;
use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Caracteristica extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $table = 'caracteristicas';
    protected $fillable = ['nombre', 'origen', 'color', 'apariencia_fisica', 'esperanza_vida', 'enfermedades_geneticas', 'historia', 'notas_adicionales', 'raza_id','tipo_id'];

    public function raza()
    {
        return $this->belongsTo(Raza::class);
    }
       public function tipo()
    {
        return $this->belongsTo(Tipo::class);
    }
}
