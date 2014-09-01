package ar.edu.seguidorcarrera.domain

import ar.edu.libros.exceptions.BusinessException

class Materia {
	@Property Long id
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
			throw new BusinessException("Nombre","Debe ingresar una materia")
		}
	}
	
	def Materia copy() {
		super.clone as Materia
	}
	
}