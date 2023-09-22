import profesionales.*
import solicitantes.*

class Empresa {
	const property profesionales = #{}
	var property honorariosDeReferencia = 0
	const property clientes = #{}
	
	method contratarProfesional(unProfesional) {
		profesionales.add(unProfesional)
	}
	
	method cuantosEstudiaronEn(unaUniversidad) = profesionales.count({p => p.universidad() == unaUniversidad})
	
	method profesionalesCaros() {
		return profesionales.filter{p => p.honorariosPorHora() > honorariosDeReferencia}
	}
	
	method universidadesFormadoras() {
		return profesionales.map({p => p.universidad()}).asSet()
	}
	
	method profesionalMasBarato() = profesionales.min({p => p.honorariosPorHora()})
	
	method esDeGenteAcotada() {
		return not profesionales.any({p => p.provinciasDondePuedeTrabajar().size() > 3})
	}
	
	method puedeSatisfacer(unSolicitante) {
	    return profesionales.any({p => unSolicitante.puedeSerAtendidoPor(p)})
    }
    
    method darServicio(unCliente) {
    	if (self.puedeSatisfacer(unCliente)) {
    		profesionales.anyOne({p => p.puedeSatisfacer(unCliente)}).cobrar(profesionales.honorariosPorHora())
    		clientes.add(unCliente)
    	} 
    }
    
    method cantidadDeClientes() {
    	clientes.size()
    }
    
    method tieneComoClienteA(unCliente) {
    	clientes.find({c => c == unCliente})
    }
}
