import frutas.*

object dia {
	var temperatura=20
	
	method pasarDia(){
		manzana.madurar()
		mandarina.resecar()
	}	
	
	method cambiarTemperaturaA(grados){
		temperatura=grados
	}
	
	method temperaturaActual() = temperatura
}
