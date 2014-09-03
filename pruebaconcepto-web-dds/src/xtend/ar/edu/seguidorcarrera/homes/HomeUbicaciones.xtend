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
	
	def int getUltimoIdUtilizado() {
		if (ubicaciones.isEmpty) {
			return 1
		}
		return ubicaciones.sortBy [ -it.id ].toList.get(0).id.intValue
	}
	
	override agregar(UbicacionMateria elem) {
		elem.id = new Long(this.getUltimoIdUtilizado.longValue + 1)
		ubicaciones.add(elem)
	}
	
	override actualizar(UbicacionMateria elem) {
		//elem.validar
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
		ubicaciones.filter[ubicacion|ubicacion.matchea(elem)].toList.map [ it.copy ]
	}
	
	override getAll() {
		ubicaciones
	}
	
	override get(Long id) {
		ubicaciones.findFirst[UbicacionMateria materia|materia.id.equals(id)]
	}
	
	

	
}