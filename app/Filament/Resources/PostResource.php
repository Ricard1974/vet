<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BlogPostResource\Widgets\PostStatsOverview;
use Closure;
use Filament\Forms;
use App\Models\Post;
use Filament\Tables;
use Illuminate\Support\Str;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\RichEditor;
use Filament\Tables\Columns\ToggleColumn;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\PostResource\Pages;
use Filament\Forms\Components\BelongsToSelect;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Resources\RelationManagers\RelationManager;
use App\Filament\Resources\PostResource\RelationManagers;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;

class PostResource extends Resource
{
    protected static ?string $model = Post::class;

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';
    protected static ?string $navigationGroup = 'Blog';

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
                        TextInput::make('slug')->required(),
                        SpatieMediaLibraryFileUpload::make('image')->label('Imagen (jpg, png, svg, webp, pdf, mp4 , mov y web)')->collection('post')->enableOpen(),
                        RichEditor::make('content')->disableToolbarButtons([
                            'attachFiles',
                            'codeBlock',
                        ])->label('Contenido'),
                        Toggle::make('is_published')->inline()->label('Está Publicado')
                    ])
                    ->columns(2)


            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                // TextColumn::make('id')->sortable(),
                TextColumn::make('title')->limit(50)->sortable()->label('Título'),
                TextColumn::make('slug')->limit(50),
                ToggleColumn::make('is_published')->label('Publicado'),
                SpatieMediaLibraryImageColumn::make('image')->label('Thumbnail')->collection('post'),
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
