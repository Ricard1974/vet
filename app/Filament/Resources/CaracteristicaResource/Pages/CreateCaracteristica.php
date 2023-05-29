<?php

namespace App\Filament\Resources\CaracteristicaResource\Pages;

use App\Filament\Resources\CaracteristicaResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateCaracteristica extends CreateRecord
{
    protected static string $resource = CaracteristicaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->previousUrl ?? $this->getResource()::getUrl('index');
    }
}
