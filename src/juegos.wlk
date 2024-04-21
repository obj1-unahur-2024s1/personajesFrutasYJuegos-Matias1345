import personajes.*
import dia.*

object voley {
	var minutosAPracticar=5
	
	method hacer(){
		martin.restarEnergia(2*minutosAPracticar)
	}
	
	method setCantidadDeMinutos(minutos){
		minutosAPracticar=minutos
	}
}

object futbol{
	var energiaARestar=10
	
	method hacer(){
		martin.restarEnergia(energiaARestar)
	}
	
	method setEnergiaGastadaPorFutbol(valor){
		energiaARestar = valor
	}
}

object aerobic{
	method hacer(){
		martin.aumentarEnergia(dia.temperaturaActual()/2)
	}
}

object basquet{
	method hacer(){
		martin.restarEnergia(martin.getEnergiaActual()/2)
	}
}


