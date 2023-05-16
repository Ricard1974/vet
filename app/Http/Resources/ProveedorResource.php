<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProveedorResource extends JsonResource
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
            'nombre' => $this->name,
            'compania' => $this->cname,
            'imagen' => $this->getFirstMediaUrl('default', 'file_name'),
            'telefono' => $this->phone,
            'telefono2' => $this->phone2,
            'contract' => $this->contract,
            'direccion' => $this->adress,
            'cif' => $this->cif,
            'nif' => $this->nif,
            'www' => $this->www,
            'mail' => $this->mail,
            'notas' => $this->notes,
            'creado' => $this->created_at,
            'actualizado' => $this->updated_at,
        ];
    }
}
