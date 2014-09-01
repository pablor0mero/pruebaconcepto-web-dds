package ar.edu.seguidorcarrera.exceptions

import java.lang.RuntimeException

class BusinessException extends RuntimeException {

	@Property String campoOrigen
	
	new(String campoOrigen, String msg) {
		super(msg)
		this.campoOrigen = campoOrigen
	}	
	
}