<?php

namespace App\Filament\Resources\GaleriaResource\Pages;

use App\Filament\Resources\GaleriaResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditGaleria extends EditRecord
{
    protected static string $resource = GaleriaResource::class;

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
