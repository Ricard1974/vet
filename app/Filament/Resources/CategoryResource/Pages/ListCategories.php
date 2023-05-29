<?php

namespace App\Filament\Resources\CategoryResource\Pages;

use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Resources\CategoryResource;
use Konnco\FilamentImport\Actions\ImportField;
use Konnco\FilamentImport\Actions\ImportAction;

class ListCategories extends ListRecords
{
    protected static string $resource = CategoryResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),

            ImportAction::make()
                ->massCreate(false)
                ->handleBlankRows(true)
                ->fields([
                    // ImportField::make('id')
                    //     ->label('id')
                    //     ->required(),
                    ImportField::make('name')
                        ->label('name')
                        ->required(),
                    ImportField::make('slug')
                        ->label('slug')
                        ->required(),
                ], columns: 2)
        ];
    }
}
