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
        Schema::create('equipos', function (Blueprint $table) {
            $table->id();
            $table->string('posicion');
            $table->string('nombre');
            $table->string('apellido');
            $table->string('direccion')->nullable();
            $table->string('ciudad')->nullable();
            $table->string('pc')->nullable();
            $table->string('telefono')->nullable();
            $table->string('email')->nullable();
            $table->string('banco')->nullable();
            $table->string('notas')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('equipos');
    }
};
