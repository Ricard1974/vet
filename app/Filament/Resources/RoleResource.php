<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Role;

use Filament\Tables;
use Filament\Resources\Form;
use Filament\Resources\Table;

use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use RelationManagers\PermissionResource;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\RoleResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\RoleResource\RelationManagers;

class RoleResource extends Resource
{
    protected static ?string $model = Role::class;

    protected static ?string $navigationIcon = 'heroicon-o-finger-print';

    protected static ?string $navigationGroup = 'Administración';

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
            TextInput::make('name')
            ->minLength(2)
            ->maxLength(255)
            ->unique(ignoreRecord:true),
            Forms\Components\Select::make('permissions')
            ->multiple()
            ->relationship('permissions','name')->preload()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
            TextColumn::make('id')->sortable(),
            TextColumn::make('name')->sortable(),
            TextColumn::make('created_at')->dateTime('d-M-Y')->sortable(),
            
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make()->requiresConfirmation(),
            ]);
    }
    
    public static function getRelations(): array
    {
        return [
            // Permission::class,
        ];
    }
    
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRoles::route('/'),
            'create' => Pages\CreateRole::route('/create'),
            'edit' => Pages\EditRole::route('/{record}/edit'),
        ];
    }
    // public static function getEloquentQuery(): Builder
    // {
    //     return parent::getEloquentQuery()->where('name','!=','Admin');
    // }
}
