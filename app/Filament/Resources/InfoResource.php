<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Info;
use Filament\Tables;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Tabs;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\Layout\Split;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\InfoResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\InfoResource\RelationManagers;

class InfoResource extends Resource
{
    protected static ?string $model = Info::class;

    protected static ?string $navigationIcon = 'heroicon-o-information-circle';
    
    protected static ?string $navigationGroup = 'Frontend';
    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Tabs::make('Heading')
                    ->tabs([
                        Tabs\Tab::make('Página Principal')
                            ->schema([
                                Card::make()
                                    ->schema([
                                        TextInput::make('empresa')
                                            ->minLength(2)
                                            ->maxLength(255)
                                            ->label('Empresa'),
                                        TextInput::make('copyright')
                                            ->label('Copyright'),
                                        TextInput::make('titulo')
                                            ->minLength(2)
                                            ->maxLength(40)->label('Título'),
                                        TextInput::make('texto')
                                            ->minLength(2)
                                            ->maxLength(255)
                                            ->label('Texto'),
                                    ])
                            ]),
                        Tabs\Tab::make('Contacto')
                            ->schema([
                                Card::make()
                                    ->schema([
                                        TextInput::make('direccion'),
                                        TextInput::make('telefono')->tel(),
                                        TextInput::make('mail')->email(),
                                    ])
                            ]),
                        Tabs\Tab::make('Blog')
                            ->schema([
                                Card::make()
                                    ->schema([
                                        TextInput::make('tituloblog'),
                                        TextInput::make('textoblog'),
                                    ])
                            ]),
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([

                Split::make([
                    TextColumn::make('telefono'),
                    TextColumn::make('direccion'),
                    TextColumn::make('mail'),
                    TextColumn::make('copyright'),
                    TextColumn::make('titulo'),
                    TextColumn::make('texto'),
                    TextColumn::make('tituloblog'),
                    TextColumn::make('textoblog'),
                ])->collapsible(),
                TextColumn::make('empresa'),
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
            'index' => Pages\ListInfos::route('/'),
            'create' => Pages\CreateInfo::route('/create'),
            'edit' => Pages\EditInfo::route('/{record}/edit'),
        ];
    }
}
