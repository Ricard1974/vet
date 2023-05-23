<?php

namespace App\Filament\Resources\CaracteristicaResource\Pages;

use App\Filament\Resources\CaracteristicaResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditCaracteristica extends EditRecord
{
    protected static string $resource = CaracteristicaResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
