<?php

namespace App\Filament\Resources\OwnerResource\Pages;

use Filament\Pages\Actions;
use App\Filament\Resources\OwnerResource;
use Filament\Resources\Pages\ListRecords;
use AlperenErsoy\FilamentExport\Actions\FilamentExportHeaderAction;

class ListOwners extends ListRecords
{
    protected static string $resource = OwnerResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Crear Propietario'),
        ];
    }
    protected function getTableHeaderActions(): array
    {
        return [

            FilamentExportHeaderAction::make('Export'),

        ];
    }
}
