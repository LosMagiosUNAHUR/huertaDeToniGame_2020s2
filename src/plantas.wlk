
class Maiz {
	var property position
	var property esAdulta = false
	const property esAptoCeliaco = true
	
	method image() {
		if (esAdulta) {
			return "maiz_adulto.png"
		} 
		else {
			return "maiz_bebe.png"
		}	
	}
	
	method cuantoOroDa(){ return 150}
		
	method regar() {
		if (not esAdulta) {esAdulta=true}
	}
	
	method listaParaCosechar() { return esAdulta }	
}

class Trigo {
	var property position
	var property etapa = 0
	const property esAptoCeliaco = false
	
	method image() {
	
	if (etapa == 0) { return "trigo_0.png" }
	else if (etapa == 1) { return "trigo_1.png"  }
	else if (etapa == 2) { return "trigo_2.png"  }
	else { return "trigo_3.png"  }
	
	}
	
	method cuantoOroDa(){ return if(etapa == 2) { 100}
		else { 200 }
		// este método será llamado solo sobre la colección de plantas cosechadas, por esa razón no se contemplan las
		// etapas 0 y 1
	}
	
	method regar() {
		if (etapa.between(0,2)) { etapa += 1}
		else { etapa=0 }
	
	}
	
	method listaParaCosechar() { return etapa >= 2 }
	
}

class Tomaco {
	var property position
	const property esAptoCeliaco = true
	
	method image() {
		return "tomaco_ok.png"
	}
	
	method cuantoOroDa(){ return 80 }
	method regar() { }
	method listaParaCosechar() { return true }
}


// Agregar las demás plantas y completar el Maiz.