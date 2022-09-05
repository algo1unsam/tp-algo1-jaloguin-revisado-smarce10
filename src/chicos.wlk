import elementos.*

object macaria {
	var nivelIra= 10
	var property disfraces = [ ]
	var property caramelos = 0
	
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}

	method hacerEnojar(){
		nivelIra += 1
	}
	
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	
	method capacidadSusto(){
		return nivelIra + disfraces.sum({disfraz => disfraz.nivelSusto()}) 
	}
	
	method recibirCaramelos(_caramelos){
		caramelos += (_caramelos - _caramelos.div(4))
	}
	
	method ordenarDisfraces(){
		disfraces.sortBy({d1, d2 => d1.nivelSusto() < d2.nivelSusto()})
	}
	
	method dameMenosEfectivo(){
		return disfraces.get(0)
	}
	
	method dejarDeUsarMenosEfectivo(){
		self.ordenarDisfraces()
		disfraces.remove(self.dameMenosEfectivo())
	}

}

object pancracio {
	var cantidadU = 4
	var property disfraces = [ mascaraDracula ]
	var property caramelos = 0
	
	method capacidadSusto(){
		return cantidadU + disfraces.get(0).nivelSusto()
	}
	
	method quitarDisfraz(_disfraz){
		cantidadU += 2
	}
	
	method disfrazar(_newDisfraz){
		disfraces.clear()
		disfraces.add(_newDisfraz)
	}
	
	method recibirCaramelos(_caramelos){
		caramelos += _caramelos
	}
}

// El chico inventado .

object pedro {
	var property disfraces = [ ]
	var property caramelos = 0

	method recibirCaramelos(_caramelos){
		caramelos += _caramelos
	}
	
	method capacidadSusto(){
		return disfraces.sum({disfraz => disfraz.nivelSusto()})	
	}
	
	method quitarDisfraz(_disfraz){
		disfraces.remove(_disfraz)
	}
	
	method disfrazar(_disfraz){
		disfraces.add(_disfraz)
	}
	
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
	
}

