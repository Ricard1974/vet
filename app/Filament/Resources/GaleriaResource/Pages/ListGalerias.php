<?php

namespace App\Filament\Resources\GaleriaResource\Pages;

use App\Filament\Resources\GaleriaResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListGalerias extends ListRecords
{
    protected static string $resource = GaleriaResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
