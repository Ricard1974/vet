<?php

namespace App\Models;

use App\Models\Tipo;
use App\Models\Caracteristica;
use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class Raza extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;


    protected $table = 'razas';
    protected $fillable = ['nombre', 'tipo_id'];

    public function tipo()
    {
        return $this->belongsTo(Tipo::class);
    }

    public function caracteristicas()
    {
        return $this->hasMany(Caracteristica::class);
    }

    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')
        ->width(300)
            ->height(300)
            ->sharpen(10)
            ->crop('crop-center', 200, 200);
    }
}
