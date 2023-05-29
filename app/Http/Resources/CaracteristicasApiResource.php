<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CaracteristicasApiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        // return parent::toArray($request);
        return[
            'id' => $this->id,
            'tipo' => $this->tipo->nombre,
            'raza' => $this->raza->nombre,
            'origen' => $this->origen,
            'tamano' => $this->tamano,
            'color' => $this->color,
            'apariencia_fisica' => $this->apariencia_fisica,
            'esperanza_vida' => $this->esperanza_vida,
            'enfermedades_geneticas' => $this->enfermedades_geneticas,
            'historia' => $this->historia,
            'notas_adicionales' => $this->notas_adicionales,
            'media_image' => $this->raza->getFirstMediaUrl('raza', 'file_name'),
            'media_thumb' => $this->raza->getFirstMediaUrl('raza', 'thumb'),
        ];
    }
}
