<?php

namespace App\Filament\Resources\CategoryResource\RelationManagers;

use Closure;
use Filament\Forms;
use Filament\Tables;
use Illuminate\Support\Str;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\ToggleColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;

class PostsRelationManager extends RelationManager
{
    protected static string $relationship = 'posts';

    protected static ?string $recordTitleAttribute = 'title';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('category_id')
                    ->relationship('category', 'name')->label('Categoria'),
                TextInput::make('title')->reactive()
                    ->afterStateUpdated(function (Closure $set, $state) {
                        $set('slug', Str::slug($state));
                    })->required()->label('Título'),
                TextInput::make('slug'),
                SpatieMediaLibraryFileUpload::make('image')->image()->label('Imagen (jpg, png, svg, webp, pdf, mp4 , mov y web)')->removeUploadedFileButtonPosition('right')->collection('post')->enableOpen(),
                Textarea::make('content')
                    ->label('Contenido')
                    ->rows(10)
                    ->cols(20),
                Toggle::make('is_published')->inline()->label('Está Publicado')->columnSpan('full')
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([

                TextColumn::make('title')->limit(50)->sortable()->label('Título'),
                TextColumn::make('category.name')->label('Categoria'),
                ToggleColumn::make('is_published')->label('Publicado')->sortable(),
                SpatieMediaLibraryImageColumn::make('image')->label('Thumbnail')->collection('post'),

            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
                Tables\Actions\AssociateAction::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DissociateAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DissociateBulkAction::make(),
            ]);
    }
}
