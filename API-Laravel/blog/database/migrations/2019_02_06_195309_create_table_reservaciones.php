<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableReservaciones extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_reservaciones', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombreC');
            $table->string('apellidoC');
            $table->integer('cedula');
            $table->integer('telefono');
            $table->string('direccion');
            $table->integer('numHabitacion');
            $table->string('tipoHabitacion');
            $table->double('costoHabitacion');
            $table->string('estado');
            $table->date('fechaInicial');
            $table->date('fechaFinal');
            
            

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('reservaciones');
    }
}
