package ar.edu.seguidorcarrera.domain

import ar.edu.seguidorcarrera.exceptions.BusinessException

class UbicacionMateria implements Cloneable{
	
	@Property String descripcion
	
	def validar(){
		if(this.descripcion==null){
			throw new BusinessException("Ubicacion","Debe ingresar una ubicacion")
		}
	}
	
	def UbicacionMateria copy() {
		super.clone as UbicacionMateria
	}
	
	def actualizarCon(UbicacionMateria ubicacion) {
		this.descripcion = ubicacion.descripcion
		
	}
	def matchea(UbicacionMateria ubicacion) {
		true
	}
	
	
	
}