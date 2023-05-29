<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Equipo;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\RichEditor;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\EquipoResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use App\Filament\Resources\EquipoResource\RelationManagers;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;

class EquipoResource extends Resource
{
    protected static ?string $model = Equipo::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-group';

    protected static ?string $navigationGroup = 'Frontend';
    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        TextInput::make(name: 'posicion')
                            ->required()
                            ->maxLength(length: 20)
                            ->label('Posicion'),
                        TextInput::make(name: 'nombre')
                            ->required()
                            ->maxLength(length: 20)
                            ->label('Nombre'),
                        TextInput::make(name: 'apellido')
                            ->required()
                            ->maxLength(length: 20)
                            ->label('Apellido'),
                        TextInput::make(name: 'direccion')
                            ->maxLength(length: 100)->label('Direccion'),
                        TextInput::make(name: 'ciudad')
                            ->maxLength(length: 20)
                            ->label('Ciudad'),
                        TextInput::make(name: 'pc')
                            ->maxLength(length: 6)->label('Codigo Postal'),
                        TextInput::make(name: 'telefono')
                            ->label('Telefono')
                            ->tel(),
                        TextInput::make(name: 'email')
                            ->label('E-Mail')
                            ->email()
                            ->maxLength(length: 30),
                        TextInput::make(name: 'banco')
                            ->label('Banco'),
                        RichEditor::make('notas')->disableToolbarButtons([
                            'attachFiles',
                            'codeBlock',
                        ])->label('Notas'),
                        SpatieMediaLibraryFileUpload::make('image')->image()->label('Imagen (jpg, png, svg, webp, pdf, mp4 , mov y web)')->removeUploadedFileButtonPosition('right')->collection('equipo')->enableOpen(),
                    ])->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('posicion')->searchable()->sortable(),
                TextColumn::make('nombre')->searchable()->sortable(),
                TextColumn::make('apellido')->label('Apellido')->searchable()->sortable(),
                TextColumn::make('direccion')->searchable(),
                TextColumn::make('ciudad'),
                TextColumn::make('pc')->limit(10),
                TextColumn::make('telefono'),
                TextColumn::make('email'),
                TextColumn::make('banco'),
                TextColumn::make('notas'),
            SpatieMediaLibraryImageColumn::make('image')->label('Thumbnail')->collection('equipo'),

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
            'index' => Pages\ListEquipos::route('/'),
            'create' => Pages\CreateEquipo::route('/create'),
            'edit' => Pages\EditEquipo::route('/{record}/edit'),
        ];
    }
}
