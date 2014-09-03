package ar.edu.seguidorcarrera.exceptions;

@SuppressWarnings("all")
public class BusinessException extends RuntimeException {
  private String _campoOrigen;
  
  public String getCampoOrigen() {
    return this._campoOrigen;
  }
  
  public void setCampoOrigen(final String campoOrigen) {
    this._campoOrigen = campoOrigen;
  }
  
  public BusinessException(final String campoOrigen, final String msg) {
    super(msg);
    this.setCampoOrigen(campoOrigen);
  }
}
