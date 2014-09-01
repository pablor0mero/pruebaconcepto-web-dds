package ar.edu.seguidorcarrera.exceptions

import java.lang.RuntimeException

/**
 * Representa un error de sistema
 */
class SystemException extends RuntimeException {
	
	new(String msg, Throwable cause) {
		super(msg, cause)
	}
	
	def getCampo() {
		null
	}
	
}