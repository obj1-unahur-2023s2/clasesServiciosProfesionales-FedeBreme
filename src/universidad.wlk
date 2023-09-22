class Universidad {
	var property provincia
	var property honorariosRecomendados
	var donacionesTotales = 0

    method recibirDonacion(unValor) {
	    donacionesTotales += unValor
    }
    
    method donacionesTotales() {
    	return donacionesTotales
    } 
}

object asociacionProfesionalesDelLitoral {
	var donacionesTotales = 0
	
	method recibirDonacion(unValor) {
	    donacionesTotales += unValor
    }
    
    method donacionesTotales() {
    	return donacionesTotales
    }
}
