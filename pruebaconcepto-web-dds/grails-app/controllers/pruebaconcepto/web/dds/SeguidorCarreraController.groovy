package pruebaconcepto.web.dds

import ar.edu.seguidorcarrera.domain.Materia
import ar.edu.seguidorcarrera.domain.Notas
import ar.edu.seguidorcarrera.domain.UbicacionMateria
import ar.edu.seguidorcarrera.exceptions.BusinessException
import ar.edu.seguidorcarrera.exceptions.SystemException
import ar.edu.seguidorcarrera.homes.Home
import ar.edu.seguidorcarrera.homes.HomeMaterias
import ar.edu.seguidorcarrera.homes.HomeUbicaciones

class SeguidorCarreraController {
	
	Home<Materia> homeMaterias = HomeMaterias.instance;
	Home<UbicacionMateria> homeUbicaciones = HomeUbicaciones.instance
	
	//static allowedMethods = [ ]

    def index() {
		redirect(action: "seguidorCarrera", params: params)
	}
	
	def seguidorCarrera() {
		def materias = homeMaterias.getAll()
		[materiasList: materias]
	}
	
	def show(Long id) {
		def materiaInstance = homeMaterias.get(id)
		def ubicaciones = homeUbicaciones.getAll()
		def notas = materiaInstance.notas
		if (!materiaInstance) {
				flash.message = "Materia " + id + " no encontrada"
				redirect(action: "seguidorCarrera")
		} else {
				[materiaInstance: materiaInstance, ubicacionesList:ubicaciones, notasList:notas]
		}
		
	}
	def delete() {
		
	}
	
	def nuevaMateria(){
		def ubicaciones = homeUbicaciones.getAll()
		[ubicacionesList:ubicaciones]
	}
	
	def agregarMateria(){
		def materia = new Materia()
		materia.setNombre(params.nombreMateria)
		materia.setUbicacionMateria(homeUbicaciones.get(params.descripcionUbicacion))
//		materia.profesor = "Granado Peralta"
		homeMaterias.agregar(materia)
		redirect(action: "seguidorCarrera")
	}
	
	def nuevaNota(Long id){
		def materia = homeMaterias.get(id)
		def nota = new Notas(params.fecha,params.descripcion,(params.aprobado.equals("Si") ? true : false))
//		materia.agregarNota(nota)
//		redirect(action:"show", id:materia.id)
		redirect(action:"show", id:materia.id)		
	}
	
	
	def eliminarNota() {
		
	}
	def guardar() {
		def materiaInstance = null
		def defaultMessage = null
		def id = params.id ? params.id as Long : null
		if (id) {
			materiaInstance = homeMaterias.get(id)
			defaultMessage = "La materia se actualizo correctamente"
		
		}
		try {
			mapear(materiaInstance, params)
			homeMaterias.actualizar(materiaInstance)
			flash.message = defaultMessage
			redirect(action: "seguidorCarrera")
		} catch (BusinessException e) {
			this.handleEditionError(materiaInstance, e)
		} catch (Exception e) {
			this.handleEditionError(materiaInstance, new SystemException("Ha ocurrido un error. Consulte al administrador"))
		}
	}
	
	def mapear(Materia materia, params) {
		if (params.nombre) {
			materia.nombre = params.nombre
		} else {
			materia.nombre = null
		}
		if (params.profesor) {
			materia.profesor = params.profesor
		} else {
			materia.profesor = null
		}
		if (params.anioCursada) {
			materia.anioCursada = params.anioCursada
		} else {
			materia.anioCursada = null
		}
		if (params.finalAprobado) {
			materia.finalAprobado = params.finalAprobado
		} else {
			materia.finalAprobado = null
		}
		materia
	}

}
