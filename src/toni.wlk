import wollok.game.*
import plantas.*

object toni {
	const property image = "toni.png"
	var property position = game.at(3, 3)
	var property plantasSembradas = []
	var property plantasCosechadas = []
	
	// Pegar acá todo lo que tenían de Toni en la etapa 1
	
	method sembrarMaiz() {
		plantasSembradas.add(new Maiz(position=self.position()))
	}
	
	method sembrarTrigo() {
		plantasSembradas.add(new Trigo(position=self.position()))
	}

	method sembrarTomaco() {
		plantasSembradas.add(new Tomaco(position=self.position()))		
	}

	method regarLasPlantas() {
		plantasSembradas.forEach( { p=>p.regar() } )
	}
	
	method plantasListasParaCosechar() {
		return plantasSembradas.filter( { p=>p.listaParaCosechar() } ).asSet()
	}

/* 	
 * REVISAR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	method cosecharPlanta(planta) {
		plantasCosechadas.add(planta)
		plantasSembradas.remove(planta)

	}
	
	*/
	method cosecharTodo() {
		plantasCosechadas.addAll(self.plantasListasParaCosechar())
		plantasSembradas.removeAll(self.plantasListasParaCosechar())
		
	}
}