<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Owner;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\OwnerResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use App\Filament\Resources\OwnerResource\RelationManagers;

class OwnerResource extends Resource
{
    protected static ?string $model = Owner::class;

    protected static ?string $navigationIcon = 'heroicon-o-identification';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make(name: 'name')
                    ->required()
                    ->maxLength(length: 255)
                    ->label('Nombre'),
                TextInput::make(name: 'surname')
                    ->required()
                    ->maxLength(length: 255)
                    ->label('Apellidos'),
                TextInput::make(name: 'email')
                    ->label('E-Mail')
                    ->email()
                    ->required()
                    ->maxLength(length: 255),
                TextInput::make(name: 'adress')
                    ->required()
                    ->maxLength(length: 255)->label('Direccion'),
                TextInput::make(name: 'pc')
                    ->required()
                    ->maxLength(length: 255)->label('Codigo Postal'),
                TextInput::make(name: 'city')
                    ->required()
                    ->maxLength(length: 255)
                    ->label('Ciudad'),
                TextInput::make(name: 'country')
                    ->required()
                    ->maxLength(length: 255)->label('Pais'),
                TextInput::make(name: 'phone')
                    ->label('Telefono')
                    ->required()
                    ->tel(),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Nombre')->searchable(),
                TextColumn::make('surname')->label('Apellido')->searchable(),
                TextColumn::make('email')->label('E-mail')->searchable(),
                TextColumn::make('phone')->label('Telefono'),
                TextColumn::make('adress')->label('Dirección'),
                TextColumn::make('city')->label('Ciudad'),
                TextColumn::make('pc')->label('Código Postal'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
                ExportBulkAction::make(),
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
            'index' => Pages\ListOwners::route('/'),
            'create' => Pages\CreateOwner::route('/create'),
            'edit' => Pages\EditOwner::route('/{record}/edit'),
        ];
    }    
}
