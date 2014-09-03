<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="main" />
	<title>Nueva Materia</title>
</head>
<body>
<form class="form-horizontal" role="form">
 	<div class="form-group">
    	<label for="nombreMateria" class="col-sm-2 control-label">Nombre Materia</label>
    	<div class="col-sm-10">
     		<input type="text" class="form-control" name="nombreMateria" id="nombreMateria" placeholder="Nombre aqui...">
    	</div>
  	</div>
  	<g:actionSubmit class="btn btn-primary btn-lg" action="agregarMateria" value="Aceptar"/>
	<g:link class="btn btn-default" action="index" value="Volver">Volver </g:link>
</form>
</body>
</html>