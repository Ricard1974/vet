<?php

namespace App\Models;

use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Proveedor extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;
    // protected $fillable =  ['name','image','phone','contract','adress'];
    public function patients(): HasMany
    {
        return $this->hasMany(Proveedor::class);
    }
}
