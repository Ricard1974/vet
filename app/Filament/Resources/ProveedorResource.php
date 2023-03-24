<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Proveedor;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Tabs;
use Livewire\TemporaryUploadedFile;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\ImageColumn;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\ProveedorResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;
use App\Filament\Resources\ProveedorResource\RelationManagers;

class ProveedorResource extends Resource
{
    protected static ?string $model = Proveedor::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form

            ->schema([
                Tabs::make('Heading')
                    ->tabs([
                        Tabs\Tab::make('Contacto')
                            ->schema([
                                Card::make()
                                    ->schema([
                                        TextInput::make(name: 'name')
                                            ->required()
                                            ->maxLength(length: 50)
                                            ->label('Nombre Empresa'),
                                        TextInput::make(name: 'cif')
                                            ->maxLength(length: 10)
                                            ->label('CIF'),
                                        TextInput::make(name: 'nif')
                                            ->maxLength(length: 10)
                                            ->label('NIF'),
                                        TextInput::make(name: 'cname')
                                            ->required()
                                            ->maxLength(length: 50)
                                            ->label('Nombre Contacto'),
                                        TextInput::make(name: 'phone')
                                            ->tel()
                                            ->telRegex('/^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\.\/0-9]*$/')
                                            ->required()
                                            ->maxLength(length: 14)
                                            ->label('Telefono 1')
                            ->hint('Incluir prefijo +34'),
                                        TextInput::make(name: 'phone2')
                                            ->tel()
                                            ->telRegex('/^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\.\/0-9]*$/')
                                            ->maxLength(length: 14)
                                            ->label('Telefono 2'),
                                        TextInput::make(name: 'adress')
                                            ->required()
                                            ->maxLength(length: 100)
                                            ->label('Dirección'),
                                        TextInput::make(name: 'www')
                        ->placeholder('htpps://www.')
                                            ->maxLength(length: 30)
                                            ->url()
                                            ->label('Web')
                            ->hint('Incluir htpps://www.'),
                                    ])
                                    ->columns(3),
                            ]),
                        Tabs\Tab::make('Notas')
                            ->schema([
                                RichEditor::make('notes')->disableToolbarButtons([
                                    'attachFiles',
                                    'codeBlock',
                                ])->label('Notas'),
                            ]),
                        Tabs\Tab::make('Adjuntos')
                            ->schema([
                                Card::make()
                                    ->schema([
                                        SpatieMediaLibraryFileUpload::make('image')->enableOpen()->label('Imagen (Solo ficheros *.png)'),
                                        FileUpload::make('contract')->acceptedFileTypes(['application/pdf'])->getUploadedFileNameForStorageUsing(function (TemporaryUploadedFile $file): string {
                                            return (string) str($file->getClientOriginalName())->prepend('doc-');
                                        })->enableOpen()->label('Documento')
                                    ])
                                    ->columns(1),

                            ]),
                    ])->columnSpan('full'),




            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')->label('Id')->searchable()->sortable(),
                TextColumn::make('name')->weight('light')->label('Empresa')->searchable()->sortable()->limit(10),
                TextColumn::make('cname')->label('Nombre Contacto')->searchable()->sortable(),
                TextColumn::make('phone')->label('Teléfono'),
                TextColumn::make('phone2')->label('Teléfono 2'),
                TextColumn::make('adress')->label('Dirección')->limit(10),
                TextColumn::make('cif')->label('CIF')->searchable(),
                TextColumn::make('nif')->label('NIF')->searchable(),
                TextColumn::make('www')->label('Web')->limit(10),
                SpatieMediaLibraryImageColumn::make('image')->label('Logotipo'),
                TextColumn::make('contract')->label('Documentos')->limit(10),
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
            'index' => Pages\ListProveedors::route('/'),
            'create' => Pages\CreateProveedor::route('/create'),
            'edit' => Pages\EditProveedor::route('/{record}/edit'),
        ];
    }
}
