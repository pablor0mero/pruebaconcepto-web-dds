package ar.edu.seguidorcarrera.exceptions;

/**
 * Representa un error de sistema
 */
@SuppressWarnings("all")
public class SystemException extends RuntimeException {
  public SystemException(final String msg, final Throwable cause) {
    super(msg, cause);
  }
  
  public Object getCampo() {
    return null;
  }
}
