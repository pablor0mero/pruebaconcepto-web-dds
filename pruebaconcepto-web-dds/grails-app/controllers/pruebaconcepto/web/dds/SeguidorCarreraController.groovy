package pruebaconcepto.web.dds

import ar.edu.seguidorcarrera.domain.Materia
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
		[materiasList: materias ]
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
	
	/* HW
	 * Metodo de prueba, va a ser eliminado*/
	def myTest() {
		[saludo : "Saludo de mierda"]
	}
	
	def nuevaMateria(){
		render(view: "nuevaMateria")
		def materia = new Materia();
		materia._nombre = params.nombreMateria
		homeMaterias.agregar(materia)
		List<Materia> materiasEnHome = new ArrayList<Materia>();
		materiasEnHome.addAll(homeMaterias.getAll());
		[materias: materiasEnHome]
	}
	
	def editarNota(){
		
	}
	
	/* HW
	 * Metodo de prueba, va a ser eliminado*/
	def private listarMateriasEnConsola(List<Materia> materias){
		System.out0.println("Cantidad de materias: " + materias.size())
		for (var in materias) {
			System.out.println("	ID: " + var.getId() + ", materia: " + var.getNombre());
		}
	}
}
