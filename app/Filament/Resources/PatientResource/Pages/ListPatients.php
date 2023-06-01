<?php

namespace App\Filament\Resources\PatientResource\Pages;

use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Resources\PatientResource;
use AlperenErsoy\FilamentExport\Actions\FilamentExportHeaderAction;

class ListPatients extends ListRecords
{
    protected static string $resource = PatientResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Crear Paciente'),
        ];
    }
    protected function getTableHeaderActions(): array
    {
        return [

            FilamentExportHeaderAction::make('Export'),

        ];
    }
}
