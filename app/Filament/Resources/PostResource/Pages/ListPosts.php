<?php

namespace App\Filament\Resources\PostResource\Pages;

use Filament\Pages\Actions;
use App\Filament\Resources\PostResource;
use Filament\Resources\Pages\ListRecords;
use AlperenErsoy\FilamentExport\Actions\FilamentExportHeaderAction;
use App\Filament\Resources\BlogPostResource\Widgets\PostStatsOverview;

class ListPosts extends ListRecords
{
    protected static string $resource = PostResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
    protected function getHeaderWidgets(): array
    {
        return [
            PostStatsOverview::class,
        ];
    }
    // protected function getHeaderWidgetsColumns(): int | array
    // {
    //     return 3;
    // }
    protected function getTableHeaderActions(): array
    {
        return [

            FilamentExportHeaderAction::make('Export'),

        ];
    }
}
