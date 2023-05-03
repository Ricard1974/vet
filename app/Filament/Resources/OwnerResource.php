<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Owner;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
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

    protected static ?string $recordTitleAttribute = 'name';

    protected static ?string $modelLabel = 'propietario';
    
    protected static ?string $navigationLabel = 'Propietarios';

    protected static ?string $navigationIcon = 'heroicon-o-identification';

    protected static ?string $navigationGroup = 'Veterinaria';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
            Card::make()
                ->schema([TextInput::make(name: 'name')
                    ->required()
                    ->maxLength(length: 20)
                    ->label('Nombre'),
                TextInput::make(name: 'surname')
                    ->required()
                    ->maxLength(length: 20)
                    ->label('Apellidos'),
                TextInput::make(name: 'email')
                    ->label('E-Mail')
                    ->email()
                    ->required()
                    ->maxLength(length: 30),
                TextInput::make(name: 'adress')
                    ->required()
                    ->maxLength(length: 100)->label('Direccion'),
                TextInput::make(name: 'pc')
                    ->required()
                    ->maxLength(length: 6)->label('Codigo Postal'),
                TextInput::make(name: 'city')
                    ->required()
                    ->maxLength(length: 20)
                    ->label('Ciudad'),
                TextInput::make(name: 'country')
                    ->required()
                    ->maxLength(length: 20)->label('Pais'),
                TextInput::make(name: 'phone')
                    ->label('Telefono')
                    ->required()
                    ->tel()
                ])->columns(2)
              

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Nombre')->searchable()->sortable(),
                TextColumn::make('surname')->label('Apellido')->searchable()->sortable(),
                TextColumn::make('email')->label('E-mail')->searchable(),
                TextColumn::make('phone')->label('Telefono'),
                TextColumn::make('adress')->label('Dirección')->limit(10),
                TextColumn::make('city')->label('Ciudad'),
                TextColumn::make('pc')->label('Código Postal')->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
            Tables\Actions\ActionGroup::make([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make()->requiresConfirmation(),
            ]),
            ])
            ->bulkActions([
                // Tables\Actions\DeleteBulkAction::make()->requiresConfirmation(),
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
