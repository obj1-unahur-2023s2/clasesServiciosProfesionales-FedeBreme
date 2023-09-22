import profesionales.*

class Persona {
	var property provinciaDondeVive
	
	method puedeSerAtendidoPor(unProfesional) {
		return unProfesional.provinciasDondePuedeTrabajar().contains(provinciaDondeVive)
	}
}

class Institucion {
	const universidadesQueReconoce = #{}
	
	method agregarUniversidad(unaUniversidad) {
		universidadesQueReconoce.add(unaUniversidad)
	}
	
	method quitarUniversidad(unaUniversidad) {
		universidadesQueReconoce.remove(unaUniversidad)
	}
	
	method puedeSerAtendidoPor(unProfesional) {
		return universidadesQueReconoce.contains(unProfesional.universidad())
	}
}

class Club {
	const provincias = #{}
	
	method agregarprovincias(unaprovincia) {
		provincias.add(unaprovincia)
	}
	
	method quitarprovincias(unaprovincia) {
		provincias.remove(unaprovincia)
	}
	
	method puedeSerAtendidoPor(unProfesional) {
		return not provincias.intersection(unProfesional.provinciasDondePuedeTrabajar()).isEmpty()
	}
	
}