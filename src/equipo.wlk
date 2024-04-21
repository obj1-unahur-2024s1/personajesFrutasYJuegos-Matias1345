import personajes.*

object equipo {
	var derecho
	var izquierdo
	var tecnico
	
	method asignar(izq,der,tec){
		izquierdo=izq
		derecho=der		
		tecnico=tec
	}
	
	method rotarPosiciones(){
		const auxIzq =izquierdo
		const auxDer =derecho
		izquierdo=auxDer
		derecho=auxIzq		
	}
	
	method incorporarNuevoTecnico(tecnicoNuevo){
		if(tecnicoNuevo.getEnergiaActual()>tecnico.getEnergiaActual()){
			tecnico=tecnicoNuevo
		}
	}
	
	method energiaPromedio() = (derecho.getEnergiaActual()+
		izquierdo.getEnergiaActual()+tecnico.getEnergiaActual())/3
	
	method estanTodosFelices() = derecho.estaFeliz() and
		izquierdo.estaFeliz() and tecnico.estaFeliz()
		
	method getIzquierdo() = izquierdo
	method getDerecho() = derecho	
	method getTecnico() = tecnico	
}



