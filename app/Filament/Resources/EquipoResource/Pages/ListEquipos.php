<?php

namespace App\Filament\Resources\EquipoResource\Pages;

use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Resources\EquipoResource;
use AlperenErsoy\FilamentExport\Actions\FilamentExportHeaderAction;

class ListEquipos extends ListRecords
{
    protected static string $resource = EquipoResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
    protected function getTableHeaderActions(): array
    {
        return [

            FilamentExportHeaderAction::make('Export'),

        ];
    }
}
