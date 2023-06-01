<?php

namespace App\Filament\Resources\RazaResource\Pages;

use Filament\Pages\Actions;
use App\Filament\Resources\RazaResource;
use Filament\Resources\Pages\ListRecords;
use Konnco\FilamentImport\Actions\ImportField;
use Konnco\FilamentImport\Actions\ImportAction;
use AlperenErsoy\FilamentExport\Actions\FilamentExportHeaderAction;

class ListRazas extends ListRecords
{
    protected static string $resource = RazaResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
            ImportAction::make()
                ->massCreate(false)
                ->handleBlankRows(true)
                ->fields([
                    ImportField::make('tipo_id')
                        ->label('Id del tipo')
                        ->required(),
                    ImportField::make('nombre')
                        ->label('Nombre')
                        ->required(),
                    ])
        ];
    }
    protected function getTableHeaderActions(): array
    {
        return [

            FilamentExportHeaderAction::make('Export'),

        ];
    }
}
