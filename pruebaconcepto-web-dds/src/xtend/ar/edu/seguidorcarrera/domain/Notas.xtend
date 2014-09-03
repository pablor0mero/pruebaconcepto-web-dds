package ar.edu.seguidorcarrera.domain

import ar.edu.seguidorcarrera.exceptions.BusinessException


class Notas implements Cloneable{
	
	@Property String fecha 
	@Property String descripcion
	@Property Boolean aprobado
	@Property Integer valor
	
	def agregarNota(Materia materia){
		
		materia.notas.add(this)
		
	}
	
	def borrarNota(Materia materia){
		if(materia.notas.contains(this)){
		materia.notas.remove(this)
		
		}else{
			throw new BusinessException ("Nota","No existe esta nota") 
		}
	}
	
	def actualizarNota(Notas nota){
		this.fecha=nota.fecha
		this.descripcion=nota.descripcion
		this.aprobado=nota.aprobado
		this.valor=nota.valor
	}
	
	
}