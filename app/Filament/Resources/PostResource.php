<?php

namespace App\Filament\Resources;

use Closure;
use App\Models\Post;
use Filament\Tables;
use Illuminate\Support\Str;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\ToggleColumn;
use App\Filament\Resources\PostResource\Pages;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;
use App\Filament\Resources\BlogPostResource\Widgets\PostStatsOverview;

class PostResource extends Resource
{
    protected static ?string $model = Post::class;

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';

    protected static ?string $navigationGroup = 'Frontend';
    protected static ?int $navigationSort = 3;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([


                Card::make()
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
                    ])
                    ->columns(2)


            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                // TextColumn::make('id')->sortable(),
                TextColumn::make('title')->limit(50)->sortable()->label('Título')->searchable(),
                // TextColumn::make('slug')->limit(50),
                ToggleColumn::make('is_published')->label('Publicado')->sortable(),
                SpatieMediaLibraryImageColumn::make('image')->label('Thumbnail')->collection('post'),
                TextColumn::make('created_at')->label('Creado')->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\ViewAction::make(),
                Tables\Actions\DeleteAction::make(),
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

    public static function getWidgets(): array
    {
        return [
            PostStatsOverview::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPosts::route('/'),
            'create' => Pages\CreatePost::route('/create'),
            'edit' => Pages\EditPost::route('/{record}/edit'),
        ];
    }
}
