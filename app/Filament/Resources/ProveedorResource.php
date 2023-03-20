<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Proveedor;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\ImageColumn;
use Filament\Forms\Components\FileUpload;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\ProveedorResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\ProveedorResource\RelationManagers;

class ProveedorResource extends Resource
{
    protected static ?string $model = Proveedor::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make(name: 'name')
                    ->required()
                    ->maxLength(length: 255)
                    ->label('Nombre'),
                FileUpload::make('image')->label('imagen (solo en *.png)')->image()->preserveFilenames()->columnSpan('full'),
                TextInput::make(name: 'phone')
                    ->required()
                    ->maxLength(length: 14)
                    ->label('Teléfono'),
                FileUpload::make('contract')->acceptedFileTypes(['application/pdf'])->preserveFilenames()->label('Documentacion (pdf)')->required()
            ]);
            
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
            TextColumn::make('id')->label('Id')->searchable(),
            TextColumn::make('name')->label('Nombre')->searchable()->sortable(),
            TextColumn::make('phone')->label('Teléfono'),
            ImageColumn::make('image')->label('Imagen'),
            TextColumn::make('contract')->label('Documentos'),
            TextColumn::make('created_at')->label('Desde')->since(),
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
            'index' => Pages\ListProveedors::route('/'),
            'create' => Pages\CreateProveedor::route('/create'),
            'edit' => Pages\EditProveedor::route('/{record}/edit'),
        ];
    }
}
