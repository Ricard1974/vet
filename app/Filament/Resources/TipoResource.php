<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Tipo;
use Filament\Tables;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\TipoResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\TipoResource\RelationManagers;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use AlperenErsoy\FilamentExport\Actions\FilamentExportBulkAction;

class TipoResource extends Resource
{
    protected static ?string $model = Tipo::class;

    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    protected static ?string $navigationGroup = 'DB';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nombre')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('nombre')->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
            Tables\Actions\DeleteBulkAction::make(),
            FilamentExportBulkAction::make('export')->label('Exportar'),
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
            'index' => Pages\ListTipos::route('/'),
            'create' => Pages\CreateTipo::route('/create'),
            'edit' => Pages\EditTipo::route('/{record}/edit'),
        ];
    }    
}
