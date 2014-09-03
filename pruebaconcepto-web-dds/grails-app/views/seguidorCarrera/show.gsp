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
		<g:form class="form-horizontal" method="post" >
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
			</div>
			<div class="buttons">
				<br>
				<g:hiddenField name="id" value="${materiaInstance?.id}" />
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