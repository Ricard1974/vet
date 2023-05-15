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
        Schema::create('infos', function (Blueprint $table) {
            $table->id();
            $table->string('empresa');
            $table->string('telefono');
            $table->string('direccion');
            $table->string('mail');
            $table->string('copyright');
            $table->string('titulo');
            $table->string('texto');
            $table->string('tituloblog');
            $table->string('textoblog');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('infos');
    }
};
