<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Patient;
use Filament\Resources\Form;
use Filament\Resources\Table;
use PhpParser\Node\Stmt\Label;
use Filament\Resources\Resource;
use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\PatientResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\PatientResource\RelationManagers;
use App\Filament\Resources\PatientResource\RelationManagers\TreatmentsRelationManager;

class PatientResource extends Resource
{
    protected static ?string $model = Patient::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make(name: 'name')
                    ->label('Nombre de la mascota')
                    ->required()
                    ->maxLength(length: 255),
                Select::make(name: 'type')
                    ->label('Tipo')
                    ->options([
                        'cat' => 'Gato',
                        'dog' => 'Perro',
                        'reptile' => 'Reptil',
                        'fish' => 'Pez',
                    ])
                    ->required(),
                DatePicker::make(name: 'date_of_birth')
                    ->label('Fecha de nacimiento')
                    ->required()
                    ->maxDate(now()),
                Select::make(name: 'owner_id')
                    ->relationship(relationshipName: 'owner', titleColumnName: 'name')
                    ->label('Propietario')
                    ->searchable()
                    ->preload()
                    ->createOptionForm([
                        TextInput::make(name: 'name')
                            ->required()
                            ->maxLength(length: 255),
                        TextInput::make(name: 'email')
                            ->label('E-Mail')
                            ->email()
                            ->required()
                            ->maxLength(length: 255),
                        TextInput::make(name: 'phone')
                            ->label('Telefono')
                            ->required()
                            ->tel(),

                    ])
                    ->required()

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Nombre')->searchable(),
                TextColumn::make('type')->label('Tipo'),
                TextColumn::make('date_of_birth')->label('Fecha Nacimiento'),
                TextColumn::make('owner.name')->label('Propietario')->searchable(),
            ])
            ->filters([
                SelectFilter::make(name: 'type')
                    ->options([
                        'cat' => 'Gato',
                        'dog' => 'Perro',
                        'reptile' => 'Reptil',
                        'fish' => 'Pez',
                    ]),
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
            RelationManagers\TreatmentsRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPatients::route('/'),
            'create' => Pages\CreatePatient::route('/create'),
            'edit' => Pages\EditPatient::route('/{record}/edit'),
        ];
    }
}
