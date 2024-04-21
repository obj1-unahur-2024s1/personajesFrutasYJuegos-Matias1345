import despensa.*
import frutas.*
import juegos.*
import colores.*
import dia.*

object martin {
	var energia=100
	var felicidad=true
	var hambre=false
	
	method estaFeliz() = felicidad
	
	method cambiarFelicidad(){
		felicidad = not(felicidad)
	}
	
	method getEnergiaActual() = energia
	
	method aumentarEnergia(valor){
		energia = energia + valor
	}
	
	method restarEnergia(valor){
		energia = 0.max(energia-valor)
	}
	
	method tieneHambre() = hambre
	
	method calmarHambre(){
		hambre = false
	}
	
	method darHambre(){
		hambre = true
	}
	
	method consumir(algo){
		algo.serConsumido()
	}
	
	method consumirDeDespensa(){		
		if(despensa.hayFruta()){
			self.consumir(despensa.getUltimaProvision())
			despensa.quitarUltimaFruta()
		}else{
			self.consumir(agua)
		}
	}
	
	method practicar(deporte){
		self.darHambre()
		deporte.hacer()
	}
	
	method irseADormir(){
		energia = energia * 1.50
		dia.pasarDia()
	}
}

object maria{
	const endorfina =100
	var colorAmuleto=rojo	
	
	method estaFeliz() = endorfina>colorAmuleto.getEnergiaProporcionada()
	
	method cambiarColorAmuleto(nuevoColor){
		colorAmuleto = nuevoColor
	}
	
	method getEnergiaActual() = endorfina*2 + colorAmuleto.getEnergiaProporcionada()
}

object pepe{
	method estaFeliz() = true
	
	method getEnergiaActual() = 77
}

object yo{
	var tieneSuenio=true
	var energia=30
	
	method estaFeliz() = not(self.estaCansado()) and energia >= 40

	method getEnergiaActual() = energia
	
	method irseADormir(){
		tieneSuenio=false
		energia=energia+30
	}
	
	method viajarEnColectivo(){
		energia = 0.max(energia-15)
	}
	
	method estaCansado() = tieneSuenio
}

