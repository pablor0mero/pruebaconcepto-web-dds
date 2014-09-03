<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="main" />
	<title>Editar Nota</title>
</head>
<body>
<form class="form-horizontal" role="form">
 	<div class="form-group">
    	<label for="fecha" class="col-sm-2 control-label">Fecha:</label>
    	<div class="col-sm-6">
     		<input type="text" class="form-control" name="fecha" id="fecha">
    	</div>
  	</div>
  	<div class="form-group">
    	<label for="descripcion" class="col-sm-2 control-label">Descripci&oacute;n:</label>
    	<div class="col-sm-6">
     		<input type="text" class="form-control" name="descripcion" id="descripcion">
    	</div>
  	</div>
  	<div class="form-group">
	  	<g:checkBox for="aprobado" name="aprobado" value="${false}" />
	    <label for="aprobado" class="col-sm-2 control-label">Aprobado</label>
  	</div>
  	<g:actionSubmit class="btn btn-primary btn-lg" action="save" value="Aceptar"/>
	<g:link class="btn btn-default" action="index" value="Volver">Volver </g:link>
</form>
</body>
</html>