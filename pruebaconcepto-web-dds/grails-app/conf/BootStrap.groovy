import ar.edu.seguidorcarrera.domain.Materia
import ar.edu.seguidorcarrera.domain.UbicacionMateria
import ar.edu.seguidorcarrera.homes.HomeMaterias
import ar.edu.seguidorcarrera.homes.HomeUbicaciones

class BootStrap {

    def init = { servletContext ->
		def ubicacion= new UbicacionMateria("2do Cuatri 2012",3)
		HomeUbicaciones.instance.agregar(ubicacion)
		HomeUbicaciones.instance.agregar(new UbicacionMateria("1er Cuatri 2012", 1))
		HomeMaterias.instance.agregar(new Materia("Legislacion",3,false,"Pepe",ubicacion))
    }
    def destroy = {
    }
}
