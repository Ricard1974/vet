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
        Schema::create('owners', function (Blueprint $table) {
            $table->id();
            $table->string(column: 'name');
            $table->string(column: 'surname');
            $table->string(column: 'email') -> nullable();
            $table->string(column: 'adress');
            $table->string(column: 'pc');
            $table->string(column: 'city');
            $table->string(column: 'country');
            $table->string(column: 'phone') -> nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('owners');
    }
};
