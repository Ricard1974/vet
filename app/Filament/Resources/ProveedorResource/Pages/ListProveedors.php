<?php

namespace App\Filament\Resources\ProveedorResource\Pages;

use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Resources\ProveedorResource;
use AlperenErsoy\FilamentExport\Actions\FilamentExportHeaderAction;
use App\Filament\Resources\ProveedorResource\Widgets\ProveedorStatsOverview;

class ListProveedors extends ListRecords
{
    protected static string $resource = ProveedorResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
    protected function getHeaderWidgets(): array
    {
        return[
           ProveedorStatsOverview::class, 
        ];
    }
    protected function getTableHeaderActions(): array
    {
        return [

            FilamentExportHeaderAction::make('Export'),

        ];
    }
}
