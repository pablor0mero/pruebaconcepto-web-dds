package ar.edu.seguidorcarrera.domain

class UbicacionMateria implements Cloneable{
	
	String descripcion = "descripcionSinSentido"
		
	def String getDescripcion(){
		return this.descripcion
	}
	
	def setDescripcion(String descripcion){
		this.descripcion = descripcion	
	}
}