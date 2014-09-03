package ar.edu.seguidorcarrera.domain
import java.util.ArrayList

import ar.edu.seguidorcarrera.exceptions.BusinessException

class Materia implements Cloneable {
	
	@Property Long id
	@Property String nombre
	@Property Integer anioCursada
	@Property Boolean finalAprobado 
	@Property String profesor
	@Property UbicacionMateria ubicacionMateria
	@Property ArrayList<Notas> notas
	
	private new(){
		notas =new ArrayList<Notas>
	}
	
	
	override toString() {
		nombre
	}
	
	new() {
		
	}
	
	new(String n, Integer a, Boolean finl, String profe,UbicacionMateria ubi) {
		this.nombre = n
		this.anioCursada = a
		this.finalAprobado = finl
		this.profesor = profe
		this.ubicacionMateria = ubi
	}
	
	def validar() {
		if (nombre == null) {
			throw new BusinessException("Nombre","Debe ingresar una materia")
		}
	}
	
	def actualizarCon(Materia materia) {
		this.id = materia.id
		this.nombre = materia.nombre
		this.anioCursada = materia.anioCursada
		this.finalAprobado = materia.finalAprobado
		this.profesor = materia.profesor
		this.ubicacionMateria = materia.ubicacionMateria
		this.notas = materia.notas
	}
	
	def Materia copy() {
		super.clone as Materia
	}
	
	def matchea(Materia materia) {
		true
	}

	
}
