package pruebaconcepto.web.dds

import ar.edu.seguidorcarrera.domain.Materia
import ar.edu.seguidorcarrera.homes.Home

class SeguidorCarreraController {
	
	Home<Materia> homeMaterias = HomeMaterias.instance 
	//Home<UbicacionMateria> homeUbicaciones = HomeUbicaciones.instance
	
	static allowedMethods = [ ]

    def index() {
		redirect(action: "seguidorCarrera", params: params)
	}
	
	def seguidorCarrera() {
		def materias = homeMaterias.getAll()
		[materiasList: materias ]
	}
}
