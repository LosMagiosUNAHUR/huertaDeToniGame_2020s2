
class Maiz {
	var property position
	var property esAdulta = false
	method image() {
		if (esAdulta) {
			return "maiz_adulto.png"
		} 
		else {
			return "maiz_bebe.png"
		}	
	}
		
	method regar() {
		if (not esAdulta) {esAdulta=true}
	}
	
	method listaParaCosechar() { return esAdulta }	
}

class Trigo {
	var property position
	var property etapa = 0
	method image() {
	
	if (etapa == 0) { return "trigo_0.png" }
	else if (etapa == 1) { return "trigo_1.png"  }
	else if (etapa == 2) { return "trigo_2.png"  }
	else { return "trigo_3.png"  }
	
	}
	
	method regar() {
		if (etapa.between(0,2)) { etapa += 1}
		else { etapa=0 }
	
	}
	
	method listaParaCosechar() { return etapa >= 2 }
	
}

class Tomaco {
	var property position
	method image() {
		return "tomaco_ok.png"
	}
	
	method regar() { }
	method listaParaCosechar() { return true }
}


// Agregar las demás plantas y completar el Maiz.