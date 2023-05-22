<?php

namespace App\Filament\Resources\EquipoResource\Pages;

use App\Filament\Resources\EquipoResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditEquipo extends EditRecord
{
    protected static string $resource = EquipoResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
    protected function getRedirectUrl(): string
    {
        return $this->previousUrl ?? $this->getResource()::getUrl('index');
    }
}
