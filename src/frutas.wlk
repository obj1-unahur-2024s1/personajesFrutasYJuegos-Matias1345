import personajes.*
import colores.*

object manzana {
	var color=verde
	
	method serConsumido(){
		martin.aumentarEnergia(self.getColor().getEnergiaProporcionada())		
		martin.calmarHambre() 	
	} 
	
	method madurar(){
		self.cambiarColor(rojo)
	}
	
	method cambiarColor(nuevoColor){
		color = nuevoColor
	}
	
	method getColor() = color
}

object mandarina {
	var gramos=60
	method serConsumido(){
		martin.aumentarEnergia((gramos/10)*2) 	
		martin.calmarHambre() 
	}
	
	method resecar(){
		gramos=gramos-gramos*0.10
	}
	
	method volverAEstadoNormal(){
		gramos = 60
	}
	
	method getGramos() = gramos
}

object banana {
	method serConsumido(){
		martin.aumentarEnergia(amarillo.getEnergiaProporcionada())
		martin.calmarHambre() 
	} 
}

object agua{
	method serConsumido(){
		martin.calmarHambre() 
	}
}

