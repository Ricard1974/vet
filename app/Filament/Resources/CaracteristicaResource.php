<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Resources\Form;
use Filament\Resources\Table;
use App\Models\Caracteristica;
use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\CaracteristicaResource\Pages;
use App\Filament\Resources\CaracteristicaResource\RelationManagers;

class CaracteristicaResource extends Resource
{
    protected static ?string $model = Caracteristica::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('raza_id')
                    ->relationship('raza', 'nombre')->preload()->searchable()->required(),
                TextInput::make('origen')
                ->datalist([
                'Norteamérica',
                'Sudamérica',
                'América Central',
                'Caribe',
                'Asia Central',
                'Asia Meridional',
                'Noreste Asiático',
                'Sudeste Asiático',
                'Australia',
                'Oceanía',
                'Europa del Norte',
                'Europa del Sur',
                'Europa del Este',
                'Europa Occidental',
                'Oriente Medio',
                'Norte de África',
                'Sur de África',
            ]),
                TextInput::make('color')
                    ->maxLength(50),
                TextInput::make('tamano')->datalist([
                    'Pequeño',
                    'Mediano',
                    'Grande',
                ]),
                Textarea::make('apariencia_fisica'),
                TextInput::make('esperanza_vida')
                    ->numeric(),
                Textarea::make('enfermedades_geneticas'),
                Textarea::make('historia'),
                Textarea::make('notas_adicionales'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('raza.nombre')->toggleable(),
                TextColumn::make('origen')->toggleable(),
                TextColumn::make('color')->toggleable(),
                TextColumn::make('tamano')->toggleable(),
                TextColumn::make('apariencia_fisica')->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('esperanza_vida')->toggleable(),
                TextColumn::make('enfermedades_geneticas')->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('historia')->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('notas_adicionales')->toggleable(isToggledHiddenByDefault: true),

            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListCaracteristicas::route('/'),
            'create' => Pages\CreateCaracteristica::route('/create'),
            'edit' => Pages\EditCaracteristica::route('/{record}/edit'),
        ];
    }
}
