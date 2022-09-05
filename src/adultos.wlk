import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	
	method fuiAsustado(ninio){
		return self.tolerancia() < ninio.capacidadSusto()
	}
	
	method serAsustadoPor(ninio){
		if(self.fuiAsustado(ninio)){
			ninio.recibirCaramelos(self.caramelosAEntregar(ninio))
		}
		
		tolerancia -= 1
	}
	
	method caramelosAEntregar(ninio){
		return (self.tolerancia() - ninio.capacidadSusto()).abs() 
	}

}
