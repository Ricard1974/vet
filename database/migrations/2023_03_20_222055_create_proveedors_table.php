<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('proveedors', function (Blueprint $table) {
            $table->id()->startingValue(8000);
            $table->string('name')->nullable();
            $table->string('cname')->nullable();
            $table->string('image')->nullable();
            $table->string('phone')->nullable()->helperText('Incluir prefijo +34');
            $table->string('phone2')->nullable();
            $table->string('contract')->nullable();
            $table->string('adress')->nullable();
            $table->string('cif')->nullable();
            $table->string('nif')->nullable();
            $table->string('www')->nullable();
            $table->string('mail')->nullable();
            $table->string('notes')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('proveedors');
    }
};
