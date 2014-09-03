<html>
<head>
</head>
<body>
<form>
	<a>Materias existentes</a><br/>
	<g:each in="${materias}" var="materia">
		<a>${materia.id}</a>
		<a>${materia.nombre}</a>
		<br/>
	</g:each>
	<g:actionSubmit controller="seguidorCarrera" action="myTest" value="Volver"/>
</form>
</body>
</html>