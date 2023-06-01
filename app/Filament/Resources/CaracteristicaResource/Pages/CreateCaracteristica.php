<?php

namespace App\Filament\Resources\CaracteristicaResource\Pages;

use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;
use App\Filament\Resources\CaracteristicaResource;
use AlperenErsoy\FilamentExport\Actions\FilamentExportHeaderAction;

class CreateCaracteristica extends CreateRecord
{
    protected static string $resource = CaracteristicaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->previousUrl ?? $this->getResource()::getUrl('index');
    }
 
}
