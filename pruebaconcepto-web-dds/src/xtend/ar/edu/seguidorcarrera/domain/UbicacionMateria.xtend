package ar.edu.seguidorcarrera.domain

class UbicacionMateria implements Cloneable{
	
	@Property Long id
	@Property String cuandoSeDa
	@Property Integer anioMateria
	
			
	def copy() {
		this.clone as UbicacionMateria
	}
	
	def String descripcion(){
		cuandoSeDa + "- Nivel: " + anioMateria
	}
	
	def actualizarCon(UbicacionMateria ubicacion) {
		this.id = ubicacion.id
		this.cuandoSeDa = ubicacion.cuandoSeDa
		this.anioMateria = ubicacion.anioMateria

	}
	
	def Boolean matchea(UbicacionMateria ub) {
		(cuandoSeDa.equals(ub.cuandoSeDa) || ub.cuandoSeDa == null) && (anioMateria == ub.anioMateria || ub.anioMateria==null)
	}
	

	
}