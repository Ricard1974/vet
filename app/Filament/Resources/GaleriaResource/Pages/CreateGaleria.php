<?php

namespace App\Filament\Resources\GaleriaResource\Pages;

use App\Filament\Resources\GaleriaResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateGaleria extends CreateRecord
{
    protected static string $resource = GaleriaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->previousUrl ?? $this->getResource()::getUrl('index');
    }
}
