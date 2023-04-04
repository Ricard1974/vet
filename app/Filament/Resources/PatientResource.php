<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Patient;
use Filament\Resources\Form;
use Filament\Resources\Table;
use PhpParser\Node\Stmt\Label;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\PatientResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use App\Filament\Resources\PatientResource\RelationManagers;
use App\Filament\Resources\PatientResource\RelationManagers\TreatmentsRelationManager;

class PatientResource extends Resource
{
    protected static ?string $model = Patient::class;

    protected static ?string $recordTitleAttribute = 'name';

    protected static ?string $modelLabel = 'paciente';

    protected static ?string $navigationLabel = 'Pacientes';

    protected static ?string $navigationIcon = 'heroicon-o-beaker';

    protected static ?string $navigationGroup = 'Veterinaria';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        TextInput::make(name: 'name')
                            ->label('Nombre de la mascota')
                            ->required()
                            ->maxLength(length: 255),
                        TextInput::make(name: 'weight')
                            ->label('Peso')
                            ->required()
                            ->maxLength(length: 255),
                        TextInput::make(name: 'chip')
                            ->label('Numero de chip')
                            ->required()
                            ->maxLength(length: 255),
                        Select::make(name: 'type')
                            ->label('Tipo')
                            ->options([
                                'Gato' => 'Gato',
                                'Perro' => 'Perro',
                                'Reptil' => 'Reptil',
                                'Otros' => 'Otros',
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
                                Card::make()
                                    ->schema([
                                        TextInput::make(name: 'name')
                                            ->required()
                                            ->maxLength(length: 20)
                                            ->label('Nombre'),
                                        TextInput::make(name: 'surname')
                                            ->required()
                                            ->maxLength(length: 20)
                                            ->label('Apellidos'),
                                        TextInput::make(name: 'email')
                                            ->label('E-Mail')
                                            ->email()
                                            ->required()
                                            ->maxLength(length: 20),
                                        TextInput::make(name: 'adress')
                                            ->required()
                                            ->maxLength(length: 30)->label('Direccion'),
                                        TextInput::make(name: 'pc')
                                            ->required()
                                            ->maxLength(length: 10)->label('Codigo Postal'),
                                        TextInput::make(name: 'city')
                                            ->required()
                                            ->maxLength(length: 20)
                                            ->label('Ciudad'),
                                        TextInput::make(name: 'country')
                                            ->required()
                                            ->maxLength(length: 20)->label('Pais'),
                                        TextInput::make(name: 'phone')
                                            ->label('Telefono')
                                            ->required()
                                            ->tel(),
                                    ])->columns(2)
                            ])
                            ->required()
                    ])->columns(3)
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
                TextColumn::make('chip')->label('Chip')->searchable(),
            ])
            ->filters([
                SelectFilter::make(name: 'type')
                    ->options([
                        'Gato' => 'Gato',
                        'Perro' => 'Perro',
                        'Reptil' => 'Reptil',
                        'Otros' => 'Otros',
                    ]),
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make(),
                    Tables\Actions\EditAction::make(),
                    Tables\Actions\DeleteAction::make()->requiresConfirmation(),
                ]),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make()->requiresConfirmation(),
                ExportBulkAction::make(),
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
