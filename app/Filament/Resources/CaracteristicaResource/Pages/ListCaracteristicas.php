<?php

namespace App\Filament\Resources\CaracteristicaResource\Pages;

use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use Konnco\FilamentImport\Actions\ImportField;
use Konnco\FilamentImport\Actions\ImportAction;
use App\Filament\Resources\CaracteristicaResource;
use AlperenErsoy\FilamentExport\Actions\FilamentExportHeaderAction;

class ListCaracteristicas extends ListRecords
{
    protected static string $resource = CaracteristicaResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
            ImportAction::make()
                ->massCreate(false)
                ->handleBlankRows(true)
                ->fields([
                    ImportField::make('tipo_id')
                        ->label('Tipo id')
                        ->required(),
                    ImportField::make('raza_id')
                        ->label('Raza id')
                        ->required(),
                    ImportField::make('origen')
                        ->label('Origen'),
                    ImportField::make('color')
                        ->label('Color'),
                    ImportField::make('tamano')
                        ->label('Tamaño'),
                    ImportField::make('esperanza_vida')
                        ->label('esperanza_vida'),
                    ImportField::make('apariencia_fisica')
                        ->label('apariencia_fisica'),
                    ImportField::make('enfermedades_geneticas')
                        ->label('enfermedades_geneticas'),
                    ImportField::make('historia')
                        ->label('historia'),
                    ImportField::make('notas_adicionales')
                        ->label('notas_adicionales'),
                ], columns: 2)
        ];
    }

    protected function getTableHeaderActions(): array
    {
        return [

            FilamentExportHeaderAction::make('Export'),

        ];
    }
}
