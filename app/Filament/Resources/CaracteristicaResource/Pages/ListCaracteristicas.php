<?php

namespace App\Filament\Resources\CaracteristicaResource\Pages;

use App\Filament\Resources\CaracteristicaResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListCaracteristicas extends ListRecords
{
    protected static string $resource = CaracteristicaResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
