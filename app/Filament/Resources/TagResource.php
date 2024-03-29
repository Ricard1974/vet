<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CategoryResource\RelationManagers\PostsRelationManager;
use Closure;
use App\Models\Tag;
use Filament\Forms;
use Filament\Tables;
use Illuminate\Support\Str;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\TagResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\TagResource\RelationManagers;
use PhpParser\Node\Stmt\Label;

class TagResource extends Resource
{
    protected static ?string $model = Tag::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static ?string $navigationGroup = 'Frontend';
    protected static ?int $navigationSort = 4;
    protected static ?string $inverseRelationship = 'section'; // Since the inverse related model is `Category`, this is normally `category`, not `section`.


    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Card::make()
                    ->schema([
                        TextInput::make('name')->reactive()->afterStateUpdated(function (Closure $set, $state) {
                            $set('slug', Str::slug($state));
                        })->required()->label('Nombre'),
                        TextInput::make('slug')->required()
                    ])
                    ->columns(2)

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')->sortable(),
                TextColumn::make('name')->limit(50)->searchable()->sortable()->label('Nombre'),
                TextColumn::make('slug')->limit(50)
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                // Tables\Actions\DeleteBulkAction::make()->requiresConfirmation(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListTags::route('/'),
            'create' => Pages\CreateTag::route('/create'),
            'edit' => Pages\EditTag::route('/{record}/edit'),
        ];
    }
}
