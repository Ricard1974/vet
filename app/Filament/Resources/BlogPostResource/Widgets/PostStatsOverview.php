<?php

namespace App\Filament\Resources\BlogPostResource\Widgets;


use App\Models\Post;
use Filament\Widgets\StatsOverviewWidget\Card;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;

class PostStatsOverview extends BaseWidget
{
    protected function getCards(): array
    {
        return [
            Card::make('Total Posts', Post::all()->count()),
            Card::make('Post creados este Mes', Post::whereMonth('created_at', date('m'))->count()),
            Card::make('Posts Publicados', Post::where('is_published', true)->count()),
        ];
    }
}
