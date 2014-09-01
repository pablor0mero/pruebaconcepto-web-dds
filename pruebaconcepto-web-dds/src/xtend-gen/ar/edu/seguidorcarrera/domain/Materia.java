package ar.edu.seguidorcarrera.domain;

import ar.edu.libros.exceptions.BusinessException;
import ar.edu.seguidorcarrera.domain.UbicacionMateria;
import com.google.common.base.Objects;
import org.eclipse.xtext.xbase.lib.Exceptions;

@SuppressWarnings("all")
public class Materia {
  private Long _id;
  
  public Long getId() {
    return this._id;
  }
  
  public void setId(final Long id) {
    this._id = id;
  }
  
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
  
  public void validar() {
    String _nombre = this.getNombre();
    boolean _equals = Objects.equal(_nombre, null);
    if (_equals) {
      throw new BusinessException("Nombre", "Debe ingresar una materia");
    }
  }
  
  public Materia copy() {
    try {
      Object _clone = super.clone();
      return ((Materia) _clone);
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
}
