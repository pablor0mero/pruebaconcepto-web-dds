package ar.edu.seguidorcarrera.homes

import ar.edu.seguidorcarrera.domain.UbicacionMateria
import java.util.List

import java.util.ArrayList

class HomeUbicaciones implements Home<UbicacionMateria> {
	
	
	List<UbicacionMateria> ubicaciones
	//singleton
	static HomeUbicaciones instance
	
	private new() {
		ubicaciones = new ArrayList<UbicacionMateria>
	}

	static def getInstance() {
		if(instance == null) {
			instance = new HomeUbicaciones()
		}
		instance
	}
	
	
	override agregar(UbicacionMateria elem) {
		ubicaciones.add(elem)
	}
	
	override actualizar(UbicacionMateria elem) {
		elem.validar
		if (elem.descripcion == null) {
			this.agregar(elem)
		} else {
			this.doActualizar(elem)
		}
	}
	
	def doActualizar(UbicacionMateria ubicacion) {
		val unaUbicacion = this.get(ubicacion.descripcion).copy
		unaUbicacion.actualizarCon(ubicacion)
	}
	
	override eliminar(UbicacionMateria elem) {
		ubicaciones.remove(this.get(elem.descripcion))
	}
	
	def get(String descripcion) {
		ubicaciones.findFirst[ubicacion|ubicacion.descripcion.equals(descripcion)]
	}
	
	override getByExample(UbicacionMateria elem) {
		ubicaciones.filter[materia|materia.matchea(elem)].toList.map [ it.copy ]
	}
	
	override getAll() {
		ubicaciones
	}
	
	
/*	override agregar(UbicacionMateria elem) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override actualizar(UbicacionMateria elem) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override eliminar(UbicacionMateria elem) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override get(Long id) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override getByExample(UbicacionMateria elem) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override getAll() {
		
	}*/
	
}