import frutas.*
import colores.*

object despensa {
	const provisiones =[agua]
	
	method agregarFruta(fruta){
		if(self.hayFruta()){
			self.quitarUltimaFruta()
		}
		provisiones.add(fruta)
		manzana.cambiarColor(verde)	
		mandarina.volverAEstadoNormal()	
	} 
	
	method getUltimaProvision() = provisiones.last()
	
	method hayFruta() = provisiones.size()>1
	
	method quitarUltimaFruta() = provisiones.remove(self.getUltimaProvision()) 
	
}
