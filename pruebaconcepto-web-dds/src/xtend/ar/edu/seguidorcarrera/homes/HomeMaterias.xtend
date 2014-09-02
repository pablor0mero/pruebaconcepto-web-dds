package ar.edu.seguidorcarrera.homes

import java.util.List
import ar.edu.seguidorcarrera.domain.Materia
import java.util.ArrayList

class HomeMaterias implements Home<Materia> {
	
	List<Materia> materias
	//singleton
	static HomeMaterias instance
	
	private new() {
		materias = new ArrayList<Materia>
	}

	static def getInstance() {
		if(instance == null) {
			instance = new HomeMaterias()
		}
		instance
	}
	
	def int getUltimoIdUtilizado() {
		if (materias.isEmpty) {
			return 1
		}
		return materias.sortBy [ -it.id ].toList.get(0).id.intValue
	}
	
	override agregar(Materia elem) {
		elem.id = new Long(this.getUltimoIdUtilizado)
		materias.add(elem)
	}
	
	override actualizar(Materia elem) {
		elem.validar
				if (elem.id == null) {
			this.agregar(elem)
		} else {
			this.doActualizar(elem)
		}
	}
	
	def doActualizar(Materia materia) {
		val unaMateria = this.get(materia.id).copy()
		unaMateria.actualizarCon(materia)
	}
	
	override eliminar(Materia elem) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override get(Long id) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override getByExample(Materia elem) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override getAll() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
}