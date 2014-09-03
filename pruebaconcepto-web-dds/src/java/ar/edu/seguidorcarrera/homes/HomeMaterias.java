package ar.edu.seguidorcarrera.homes;

import ar.edu.seguidorcarrera.domain.Materia;
import ar.edu.seguidorcarrera.homes.Home;
import com.google.common.base.Objects;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.ListExtensions;

@SuppressWarnings("all")
public class HomeMaterias implements Home<Materia> {
  private List<Materia> materias;
  
  private static HomeMaterias instance;
  
  private HomeMaterias() {
    ArrayList<Materia> _arrayList = new ArrayList<Materia>();
    this.materias = _arrayList;
  }
  
  public static HomeMaterias getInstance() {
    HomeMaterias _xblockexpression = null;
    {
      boolean _equals = Objects.equal(HomeMaterias.instance, null);
      if (_equals) {
        HomeMaterias _homeMaterias = new HomeMaterias();
        HomeMaterias.instance = _homeMaterias;
      }
      _xblockexpression = HomeMaterias.instance;
    }
    return _xblockexpression;
  }
  
  public int getUltimoIdUtilizado() {
    boolean _isEmpty = this.materias.isEmpty();
    if (_isEmpty) {
      return 1;
    }
    final Function1<Materia,Long> _function = new Function1<Materia,Long>() {
      public Long apply(final Materia it) {
        Long _id = it.getId();
        return Long.valueOf((-(_id).longValue()));
      }
    };
    List<Materia> _sortBy = IterableExtensions.<Materia, Long>sortBy(this.materias, _function);
    List<Materia> _list = IterableExtensions.<Materia>toList(_sortBy);
    Materia _get = _list.get(0);
    Long _id = _get.getId();
    return _id.intValue();
  }
  
  public void agregar(final Materia elem) {
    int _ultimoIdUtilizado = this.getUltimoIdUtilizado();
    Long _long = new Long(_ultimoIdUtilizado);
    elem.setId(_long);
    this.materias.add(elem);
  }
  
  public void actualizar(final Materia elem) {
    elem.validar();
    Long _id = elem.getId();
    boolean _equals = Objects.equal(_id, null);
    if (_equals) {
      this.agregar(elem);
    } else {
      this.doActualizar(elem);
    }
  }
  
  public void doActualizar(final Materia materia) {
    Long _id = materia.getId();
    Materia _get = this.get(_id);
    final Materia unaMateria = _get.copy();
    unaMateria.actualizarCon(materia);
  }
  
  public void eliminar(final Materia elem) {
    Long _id = elem.getId();
    Materia _get = this.get(_id);
    this.materias.remove(_get);
  }
  
  public Materia get(final Long id) {
    final Function1<Materia,Boolean> _function = new Function1<Materia,Boolean>() {
      public Boolean apply(final Materia materia) {
        Long _id = materia.getId();
        return Boolean.valueOf(_id.equals(id));
      }
    };
    return IterableExtensions.<Materia>findFirst(this.materias, _function);
  }
  
  public List<Materia> getByExample(final Materia elem) {
    final Function1<Materia,Boolean> _function = new Function1<Materia,Boolean>() {
      public Boolean apply(final Materia materia) {
        return Boolean.valueOf(materia.matchea(elem));
      }
    };
    Iterable<Materia> _filter = IterableExtensions.<Materia>filter(this.materias, _function);
    List<Materia> _list = IterableExtensions.<Materia>toList(_filter);
    final Function1<Materia,Materia> _function_1 = new Function1<Materia,Materia>() {
      public Materia apply(final Materia it) {
        return it.copy();
      }
    };
    return ListExtensions.<Materia, Materia>map(_list, _function_1);
  }
  
  public List<Materia> getAll() {
    return this.materias;
  }
}
