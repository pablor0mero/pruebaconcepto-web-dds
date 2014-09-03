package ar.edu.seguidorcarrera.domain;

@SuppressWarnings("all")
public class UbicacionMateria implements Cloneable {
  private String descripcion = "descripcionSinSentido";
  
  public String getDescripcion() {
    return this.descripcion;
  }
  
  public String setDescripcion(final String descripcion) {
    return this.descripcion = descripcion;
  }
}
