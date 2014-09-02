package ar.edu.seguidorcarrera.homes

import java.util.List

interface Home<T> {
	def void agregar(T elem)
	def void actualizar(T elem)
	def void eliminar(T elem)
	def T get(Long id)
	def List<T> getByExample(T elem)
	def List<T> getAll()
	
}