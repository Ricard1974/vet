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
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use App\Filament\Resources\CaracteristicaResource\RelationManagers;

class CaracteristicaResource extends Resource
{
    protected static ?string $model = Caracteristica::class;

    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    protected static ?string $navigationGroup = 'DB';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('tipo_id')
                ->relationship('tipo', 'nombre')->preload()->searchable()->required(),
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
                    ->maxLength(255),
                TextInput::make('tamano')->datalist([
                    'Pequeño',
                    'Mediano',
                    'Grande',
                ]),
                TextInput::make('esperanza_vida')
                ->numeric(),
                Textarea::make('apariencia_fisica'),
                Textarea::make('enfermedades_geneticas'),
                Textarea::make('historia'),
                Textarea::make('notas_adicionales'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('tipo.nombre')->toggleable(),
                TextColumn::make('raza.nombre')->toggleable(),
                TextColumn::make('origen')->toggleable(),
                TextColumn::make('color')->toggleable(),
                TextColumn::make('tamano')->toggleable(),
                TextColumn::make('apariencia_fisica')->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('esperanza_vida')->toggleable(),
                TextColumn::make('enfermedades_geneticas')->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('historia')->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('notas_adicionales')->toggleable(isToggledHiddenByDefault: true),
                SpatieMediaLibraryImageColumn::make('raza.image')->label('Imagen')->collection('raza')->toggleable(),

            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\ViewAction::make(),
            ])
            ->bulkActions([
                // Tables\Actions\DeleteBulkAction::make(),
                ExportBulkAction::make()->label('Exportar'),
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
