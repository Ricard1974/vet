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
        Schema::create('patients', function (Blueprint $table) {
            // falta numero id passaport / pes / numero dde chip / vacunes / color / foto?
            $table->id();
            $table->date(column: 'date_of_birth')->nullable();
            $table->string(column: 'name');
            $table->string(column: 'type');
            $table->string(column: 'weight');
            $table->string(column: 'chip')->nullable();
            $table->foreignId(column:'owner_id')->constrained(table:'owners')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('patients');
    }
};
