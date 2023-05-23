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
        Schema::create('caracteristicas', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('origen');
            $table->string('tamano');
            $table->string('color');
            $table->text('apariencia_fisica');
            $table->integer('esperanza_vida');
            $table->text('enfermedades_geneticas')->nullable();
            $table->text('historia')->nullable();
            $table->text('notas_adicionales')->nullable();
            $table->unsignedBigInteger('raza_id');
            $table->foreign('raza_id')->references('id')->on('razas');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('caracteristicas');
    }
};
