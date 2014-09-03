package ar.edu.seguidorcarrera.homes;

import ar.edu.seguidorcarrera.domain.UbicacionMateria;
import ar.edu.seguidorcarrera.homes.Home;
import com.google.common.base.Objects;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;

@SuppressWarnings("all")
public class HomeUbicaciones implements Home<UbicacionMateria> {
  private List<UbicacionMateria> ubicaciones;
  
  private static HomeUbicaciones instance;
  
  private HomeUbicaciones() {
    ArrayList<UbicacionMateria> _arrayList = new ArrayList<UbicacionMateria>();
    this.ubicaciones = _arrayList;
  }
  
  public static HomeUbicaciones getInstance() {
    HomeUbicaciones _xblockexpression = null;
    {
      boolean _equals = Objects.equal(HomeUbicaciones.instance, null);
      if (_equals) {
        HomeUbicaciones _homeUbicaciones = new HomeUbicaciones();
        HomeUbicaciones.instance = _homeUbicaciones;
      }
      _xblockexpression = HomeUbicaciones.instance;
    }
    return _xblockexpression;
  }
  
  public void agregar(final UbicacionMateria elem) {
    this.ubicaciones.add(elem);
  }
  
  public void actualizar(final UbicacionMateria elem) {
    throw new Error("Unresolved compilation problems:"
      + "\nThe method validar is undefined for the type HomeUbicaciones");
  }
  
  public Object doActualizar(final UbicacionMateria ubicacion) {
    throw new Error("Unresolved compilation problems:"
      + "\nThe method copy is undefined for the type HomeUbicaciones"
      + "\nactualizarCon cannot be resolved");
  }
  
  public void eliminar(final UbicacionMateria elem) {
    String _descripcion = elem.getDescripcion();
    UbicacionMateria _get = this.get(_descripcion);
    this.ubicaciones.remove(_get);
  }
  
  public UbicacionMateria get(final String descripcion) {
    final Function1<UbicacionMateria,Boolean> _function = new Function1<UbicacionMateria,Boolean>() {
      public Boolean apply(final UbicacionMateria ubicacion) {
        String _descripcion = ubicacion.getDescripcion();
        return Boolean.valueOf(_descripcion.equals(descripcion));
      }
    };
    return IterableExtensions.<UbicacionMateria>findFirst(this.ubicaciones, _function);
  }
  
  public List<UbicacionMateria> getByExample(final UbicacionMateria elem) {
    throw new Error("Unresolved compilation problems:"
      + "\nThe method matchea is undefined for the type HomeUbicaciones"
      + "\nThe method copy is undefined for the type HomeUbicaciones");
  }
  
  public List<UbicacionMateria> getAll() {
    return this.ubicaciones;
  }
}
