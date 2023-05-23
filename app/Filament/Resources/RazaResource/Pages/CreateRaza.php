<?php

namespace App\Filament\Resources\RazaResource\Pages;

use App\Filament\Resources\RazaResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateRaza extends CreateRecord
{
    protected static string $resource = RazaResource::class;
    protected function getRedirectUrl(): string
    {
        return $this->previousUrl ?? $this->getResource()::getUrl('index');
    }
}
