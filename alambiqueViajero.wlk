object luke{
    var cantidadDeViajes = 0
    var vehiculo = alambiqueVeloz
    var recuerdo=null   //null == no valor
    method cuantosViajes() = cantidadDeViajes
    method vehiculo() = vehiculo
    method vehiculo(nuevoVehiculo) {vehiculo=nuevoVehiculo}

    method visitar(){cantidadDeViajes = cantidadDeViajes+1}
    
    method viajar(lugar){
        if(lugar.puedeLlegar()){
        cantidadDeViajes = cantidadDeViajes + 1
        recuerdo = lugar.recuerdoTipico()
        vehiculo.consumirCombustible()
        }

    }
    method recuerdo() = recuerdo
}

// Lugares
object paris{
    method puedeLlegar() = luke.vehiculo().tieneCombustible()
    method recuerdoTipico() = "Llavero de torre eiffel"
}

object buenosAires{
    method puedeLlegar() = luke.vehiculo().esRapido()
    method recuerdoTipico() = "Mate"
}

object bagdad{
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo=nuevo}
    method puedeLlegar() = true
}

object lasVegas{
    var conmemoracion = null
    method conmemoracion(lugarNuevo) {conmemoracion=lugarNuevo}
    method recuerdoTipico() = conmemoracion.recuerdoTipico()
    method puedeLlegar() = conmemoracion.puedeLlegar()
}

// Coches
object alambiqueVeloz{
    var combustible = 100
    const consumoPorViaje = 10
    const rapido = true
    method combustible()=combustible
    method tieneCombustible() = combustible > consumoPorViaje
    method consumirCombustible(){
        combustible = combustible - consumoPorViaje
    }
    method esRapido() = rapido
}

object coche1{
    var combustible = alambiqueVeloz.combustible()
    var numPersonas = 7
    const consumoPorViaje = 10 + numPersonas*3
    method tieneCombustible() = combustible > consumoPorViaje
    method consumirCombustible(){
        combustible = combustible - consumoPorViaje
    }
    method numPersonas(nuevaCantidad) {numPersonas=nuevaCantidad}
    method esRapido() = numPersonas <= 4
}

object coche2{
    var auto = auto1
    method tieneCombustible() = auto.tieneCombustible()
    method esRapido() = auto.esRapido()
    method conversion() = auto
    method conversion(autoNuevo){auto=autoNuevo}


}

object auto1{
    var combustible=100
    var consumoPorViaje = 32
    method combustible ()  = combustible 
    method esRapido() = true 
    method tieneCombustible() = combustible > consumoPorViaje
}

object moto {
    method esRapido()=true
    method tieneCombustible()= not moto.esRapido()
    // TERMINAR
}