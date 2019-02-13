<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reservaciones extends Model
{
    protected $nombreC = ['nombreC'];
    protected $apellidoC = ['apellidoC'];
    protected $cedula = ['cedula'];
    protected $telefono = ['telefono'];
    protected $direccion = ['direccion'];
    protected $numHabitacion = ['numHabitacion'];
    protected $tipoHabitacion = ['tipoHabitacion'];
    protected $costoHabitacion = ['costoHabitacion'];
    protected $estado = ['estado'];
    protected $fechaInicial = ['fechaInicial'];
    protected $fechaFinal = ['fechaFinal'];

}
