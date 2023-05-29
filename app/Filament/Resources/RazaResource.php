<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Raza;
use Filament\Tables;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\RazaResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\RazaResource\RelationManagers;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;

class RazaResource extends Resource
{
    protected static ?string $model = Raza::class;

    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    protected static ?string $navigationGroup = 'DB';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('tipo_id')
                    ->relationship('tipo', 'nombre')->preload()->searchable()->required(),
                Forms\Components\TextInput::make('nombre')
                    ->required()
                    ->maxLength(255),
                SpatieMediaLibraryFileUpload::make('image')->image()->label('Imagen (jpg, png, svg, webp, pdf, mp4 , mov y web)')->removeUploadedFileButtonPosition('right')->collection('raza')->enableOpen(),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('tipo.nombre')->searchable(),
                Tables\Columns\TextColumn::make('nombre')->searchable(),
                SpatieMediaLibraryImageColumn::make('image')->label('Imagen')->collection('raza'),
            ])
            ->filters([

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
            'index' => Pages\ListRazas::route('/'),
            'create' => Pages\CreateRaza::route('/create'),
            'edit' => Pages\EditRaza::route('/{record}/edit'),
        ];
    }
}
