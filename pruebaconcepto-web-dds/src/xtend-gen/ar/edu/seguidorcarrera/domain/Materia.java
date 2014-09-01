package ar.edu.seguidorcarrera.domain;

import ar.edu.seguidorcarrera.domain.UbicacionMateria;
import com.google.common.base.Objects;

@SuppressWarnings("all")
public class Materia {
  private String _nombre;
  
  public String getNombre() {
    return this._nombre;
  }
  
  public void setNombre(final String nombre) {
    this._nombre = nombre;
  }
  
  private Integer _anioCursada;
  
  public Integer getAnioCursada() {
    return this._anioCursada;
  }
  
  public void setAnioCursada(final Integer anioCursada) {
    this._anioCursada = anioCursada;
  }
  
  private Boolean _finalAprobado;
  
  public Boolean getFinalAprobado() {
    return this._finalAprobado;
  }
  
  public void setFinalAprobado(final Boolean finalAprobado) {
    this._finalAprobado = finalAprobado;
  }
  
  private String _profesor;
  
  public String getProfesor() {
    return this._profesor;
  }
  
  public void setProfesor(final String profesor) {
    this._profesor = profesor;
  }
  
  private UbicacionMateria _ubicacionMateria;
  
  public UbicacionMateria getUbicacionMateria() {
    return this._ubicacionMateria;
  }
  
  public void setUbicacionMateria(final UbicacionMateria ubicacionMateria) {
    this._ubicacionMateria = ubicacionMateria;
  }
  
  public String toString() {
    return this.getNombre();
  }
  
  public Object validar() {
    Object _xifexpression = null;
    String _nombre = this.getNombre();
    boolean _equals = Objects.equal(_nombre, null);
    if (_equals) {
      _xifexpression = null;
    }
    return _xifexpression;
  }
}
