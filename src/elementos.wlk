object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud = 2
	
	method nivelSusto(){
		return longitud * 5
	}
	
	method perderPelos(menosPelos){
		longitud -= menosPelos
	}
	
	method agregarPelos(masPelos){
		longitud += masPelos
	}
}

object mascaraDracula{
	var tamanio = 2
	
	method nivelSusto(){
		return tamanio * 2
	}
}

object mascaraFrankenstein {
	method nivelSusto(){
		return 22
	}
}

object mascaraPolitico {
	var cantidadDePromesas = 10
	
	method nivelSusto(){
		return cantidadDePromesas
	}	
}

