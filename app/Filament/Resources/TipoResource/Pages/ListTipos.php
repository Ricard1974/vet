<?php

namespace App\Filament\Resources\TipoResource\Pages;

use Filament\Pages\Actions;
use App\Filament\Resources\TipoResource;
use Filament\Resources\Pages\ListRecords;
use Konnco\FilamentImport\Actions\ImportField;
use Konnco\FilamentImport\Actions\ImportAction;

class ListTipos extends ListRecords
{
    protected static string $resource = TipoResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
            ImportAction::make()
                ->massCreate(false)
                ->handleBlankRows(true)
                ->fields([
                    ImportField::make('nombre')
                        ->label('Nombre')
                        ->required(),
                ])
        ];
    }
}
