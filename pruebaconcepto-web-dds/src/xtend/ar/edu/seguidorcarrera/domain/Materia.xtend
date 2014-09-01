package ar.edu.seguidorcarrera.domain

class Materia {
	@Property String nombre
	@Property Integer anioCursada
	@Property Boolean finalAprobado 
	@Property String profesor
	@Property UbicacionMateria ubicacionMateria
	
	
	override toString() {
		nombre
	}
	
	def validar() {
		if (nombre == null) {
			//throw new UserException("Debe ingresar una materia")
		}
	}
	
}