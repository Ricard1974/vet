<?php

namespace App\Models;

use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class Proveedor extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;
    
    public function patients(): HasMany
    {
        return $this->hasMany(Proveedor::class);
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
