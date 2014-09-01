package ar.edu.seguidorcarrera.homes;

import java.util.List;

@SuppressWarnings("all")
public interface Home<T extends Object> {
  public abstract void agregar(final T elem);
  
  public abstract void actualizar(final T elem);
  
  public abstract void eliminar(final T elem);
  
  public abstract T get(final Long id);
  
  public abstract List<T> getByExample(final T elem);
}
