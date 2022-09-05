import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var property integrantes = [ ]

	method todosLosDisfraces(){
		return integrantes.map({ninio => ninio.disfraces()}).flatten()
	}
	
	method disfracesRepetidos(){
		return self.todosLosDisfraces().asSet().filter({disfraz => 
			self.todosLosDisfraces().occurrencesOf(disfraz) > 1	
		})
	}
	
	method caramelos(){
		return integrantes.sum({ninio => ninio.caramelos()})
	}
	
	method agregarIntegrantes(_integrantes){
		integrantes += _integrantes.asSet()
	}
	
	method capacidadSusto(){
		return integrantes.sum({ninio => ninio.capacidadSusto()})
	}
	
	method ordenarIntegrantes(){
		integrantes.sortBy({n1, n2 => n1.capacidadSusto() > n2.capacidadSusto()})
	}
	
	method lider(){
		self.ordenarIntegrantes()
		return integrantes.get(0)
	}
	
	method recibirCaramelos(_caramelos){
		self.lider().recibirCaramelos(_caramelos)
	}
		
	method quitarRepetidosDeLosNinios(){
		integrantes.forEach({ninio => 
			self.disfracesRepetidos().forEach({disfraz => 
				if(ninio.disfraces().contains(disfraz)){
					ninio.quitarDisfraz(disfraz)
				}
			})
		})
	}
	
	method normaSinRepetidos(){
		self.quitarRepetidosDeLosNinios()
	}
	
}


object barrio{
	var chicos = []
	
	method chicos(_chicos){
		chicos += _chicos.asSet()
	}
	
	method chicos(){
		return chicos
	}
	
	method ordenarChicos(){
		chicos.sortBy({c1, c2 => c1.caramelos() > c2.caramelos()})
	}
	
	method chicosConMasCaramelos(cant){
		self.ordenarChicos()
		return chicos.take(cant)
	}
	
	method algunoMuyAsustador(){
		return chicos.map({ninio => ninio.capacidadSusto()}).any({capacidadSusto => capacidadSusto > 42})
	}
}


