<?php

namespace App\Filament\Resources\ProveedorResource\Widgets;

use App\Models\Proveedor;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Card;

class ProveedorStatsOverview extends BaseWidget
{
    protected function getCards(): array
    {
        return [
            Card::make('Numero de provedores', Proveedor::all()->count()),
            Card::make('Sin notas', Proveedor::where('notes',null)->count()),
            Card::make('Creados Hoy', Proveedor::whereDay('created_at',date('d'))->count()),
            Card::make('Creados este Mes', Proveedor::whereMonth('created_at',date('m'))->count()),
            Card::make('Creados este Año', Proveedor::whereYear('created_at',date('Y'))->count()),
        ];
    }
}
