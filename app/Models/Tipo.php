<?php

namespace App\Models;

use App\Models\Raza;
use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Tipo extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;


    protected $table = 'tipos';
    protected $fillable = ['nombre'];

    public function razas()
    {
        return $this->hasMany(Raza::class);
    }
    public function tipo()
    {
        return $this->belongsTo(Tipo::class);
    }
    public function caracteristica()
    {
        return $this->hasMany(Caracteristica::class);
    }
}
