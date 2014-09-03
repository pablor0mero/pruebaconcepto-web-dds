<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Informacion Materia</title>
</head>
<body>
  <div class="body">
  		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
  </div>
		<g:form class="form-horizontal" >
		<input type="hidden" name="id" value="${materiaInstance?.id}"/>
			<div class="row">
				<div class="col-md-6">
					<label class="control-label" for="nombre">Nombre Materia </label> 
					<input class="readOnly form-control" type="text" value="${materiaInstance?.nombre}" />
				</div>
				<div class="col-md-6">
					<label class="control-label" for="anioCursada">A&ntilde;o cursada </label>
					<input class="readOnly form-control" type="text" value="${materiaInstance?.anioCursada}" />
				</div>
				<div class="col-md-6">
					<br>	
					<label> <input class="control-label" type="checkbox" checked="${materiaInstance?.finalAprobado}" > Final aprobado</label>
				</div>
				<div class="col-md-6">
					<label class="control-label" for="profesor">Profesor</label>
					<input class="readOnly form-control" type="text" value="${materiaInstance?.profesor}" /> 
				</div>
				<div class="col-md-6">
				<label class="control-label" for="ubicacionMateria">Ubicacion Materia</label>
				<select class="form-control">
					<g:each in="${ubicacionesList}" var="ubicacionInstance">
  						<option selected="${materiaInstance.ubicacionMateria.matchea(ubicacionInstance) }">${ubicacionInstance.descripcion }</option>
  					</g:each>

				</select>
				</div>
			</div>
			
			<div id="list-nota" class="col-md-6">
			<b>Notas</b>
			<br/>
			<table class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<g:sortableColumn property="fecha" title="Fecha" />
					<g:sortableColumn property="descripcion" title="Descripcion"/>
					<g:sortableColumn property = "aprobado" title="Aprobado"/>
				</thead>
				<tbody>
					<g:each in="${notasList}" var="notaInstance">
						<tr class="info">
							<td class="col-md-2">
								<g:link action="show" name="${notaInstance.fecha}" >${notaInstance.fecha}</g:link>
							</td>
							<td class="col-md-4">
								${notaInstance.descripcion }
							</td>
							<td class="col-md-2">
								${notaInstance.aprobado ? "Si" : "No" }
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="buttons">
			<g:link class= "btn btn-primary" action="nuevaNota" id="${materiaInstance.id }" >
				Agregar Nota
				</g:link>
				<g:link class="btn btn-primary" action="eliminarNota"> Eliminar Nota
				</g:link>
			</div>
		</div>
			
			<div class="buttons" >
				<br>
				
				<g:actionSubmit class="btn btn-primary" value="Efectuar Cambios" action="guardar"/>
				<!--  se pueden poner botones con íconos como éste
				<button class="btn btn-primary" name="_action_edit" value="Editar">
					<i class="icon-file icon-white"></i>Editar
				</button>
				 -->
				<g:actionSubmit class="btn btn-primary" action="delete" value="Eliminar"/>
				<g:link class="btn btn-primary" action="index">
					Cancelar
				</g:link>
			</div>
			
		</g:form>
</body>
</html>