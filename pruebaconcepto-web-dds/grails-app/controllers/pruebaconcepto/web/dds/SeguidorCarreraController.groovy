package pruebaconcepto.web.dds

import ar.edu.seguidorcarrera.domain.Materia
import ar.edu.seguidorcarrera.domain.UbicacionMateria
import ar.edu.seguidorcarrera.homes.Home
import ar.edu.seguidorcarrera.homes.HomeMaterias

class SeguidorCarreraController {
	
	Home<Materia> homeMaterias = HomeMaterias.instance;
	//Home<UbicacionMateria> homeUbicaciones = HomeUbicaciones.instance
	
	//static allowedMethods = [ ]

    def index() {
		redirect(action: "seguidorCarrera", params: params)
	}
	
	def seguidorCarrera() {
		def materias = homeMaterias.getAll()
		[materiasList: materias , materiaSeleccionada: new Materia()]
	}
	
	def show(Long id) {
		def materia = homeMaterias.get(id)
		if (!materia) {
				flash.message = "Materia " + id + " no encontrada"
				redirect(action: "seguidorCarrera")
		} else {
				[materia: materia]
		}
		
	}
	
	def nuevaMateria(){
		//render(view: "nuevaMateria")
	}
	
	def agregarMateria(){
		def materia = new Materia()
		materia.setNombre(params.nombreMateria)
		def ubicMat = new UbicacionMateria()
		materia.setUbicacionMateria(ubicMat)
		homeMaterias.agregar(materia)
		redirect(action: "seguidorCarrera")
	}
	
	def editarNota(){
		
	}
}
