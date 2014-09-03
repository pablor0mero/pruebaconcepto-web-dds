<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		#materiaSeleccionada tr {
			padding-bottom: 5px;
		}
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="main" />
	<title>Seguidor de Carrera</title>
</head>
<body>
	<div style="height: 45px;" class="col-md-12">
		<a>Seguidor de Carrera</a>
	</div>
	<div id="leftPanel" class="col-md-6">
		<div id="list-materia" class="col-md-12">
			<b>Materias</b>
			<br/>
			<table class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<g:sortableColumn property="nombre" title="Materia" />
				</thead>
				<tbody>
					<g:each in="${materiasList}" var="materiaInstance">
						<tr class="info">
							<td class="col-md-2">
								<g:link action="show" id="${materiaInstance.id}" >${materiaInstance.nombre}</g:link>
							</td>
							<td class="col-md-4">
								${materiaInstance.ubicacionMateria }
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
		</div>
		<div class="col-md-6">
			<g:link class="btn btn-primary" action="nuevaMateria">
				<span class="glyphicon glyphicon-plus"></span>
				Nueva Materia
			</g:link>
		</div>
	</div>
	<div id="rightPanel" class="col-md-6">
		<table id="materiaSeleccionada" >
			<tr class="col-md-12">
				<td style="height: 25px;">
					<b>${materiaSeleccionada.nombre}</b>
				</td>
			</tr>
			<tr class="col-md-12">
				<td class="col-md-4">Anio Cursada:</td>
				<td class="col-md-3">
					<input class="col-md-12" value="${materiaSeleccionada.anioCursada}" />
				</td>
				<td class="col-md-1">
					<input class="col-md-12"/>
				</td>
				<td class="col-md-4">Final Aprobado</td>
			</tr>
			<tr class="col-md-12">
				<td class="col-md-6">Profesor de Cursada:</td>
				<td class="col-md-6">
					<input class="col-md-12" />
				</td>
			</tr>
			<tr class="col-md-12">
				<td class="col-md-6">Ubicaci&oacute;n materia:</td>
				<td class="col-md-6">
					<input class="col-md-12" />
				</td>
			</tr>
		</table>
		
		<div>
			Aca va la grilla de las notas. Pero son las 5am y ni en pedo
			:D
			<div class="col-md-12">
				<g:link class="btn btn-primary" action="editarNota">
					Editar Nota
				</g:link>
				<g:link class="btn btn-primary" action="">
					<span class="glyphicon glyphicon-plus"></span>
				</g:link>
				<g:link class="btn btn-primary" action="">
					<span class="glyphicon glyphicon-minus"></span>
				</g:link>
			</div>
		</div>
	</div>
	
	<%--
       <div style="width: 90%; padding: 15pt;">
       		<div id="collapseTwo" class="panel-collapse collapse in">
				<div class="panel-body">
					<!--  <div id="list-materia" class="content scaffold-list"> -->
					<div id="list-materia" class="col-md-6">
						<table class="table table-striped table-bordered table-hover table-condensed">
							<thead>
								<g:sortableColumn property="nombre" title="Materia" />
							</thead>
							<tbody>
								<g:each in="${materiasList}" var="materiaInstance">
									<tr class="info">
										<td><g:link action="show" id="${materiaInstance.id}"> 
											${materiaInstance.nombre}
											</g:link>
										</td>
										<td>
											${materiaInstance.ubicacionMateria }
										</td>
									</tr>
								</g:each>
							</tbody>
						</table>
					</div>
					<div class="col-md-6">
							<g:link class="btn btn-primary btn-lg" action="nuevaMateria">
								<span class="glyphicon glyphicon-plus"></span>
								Nueva Materia
							</g:link>
					</div>
					<div class="col-md-6">
							<g:link class="btn btn-primary btn-lg" action="editarNota">
								Editar Nota
							</g:link>
							<g:link class="btn btn-primary btn-lg" action="">
								<span class="glyphicon glyphicon-plus"></span>
							</g:link>
							<g:link class="btn btn-primary btn-lg" action="">
								<span class="glyphicon glyphicon-minus"></span>
							</g:link>
					</div>
				</div>
			</div>	
       </div>--%>
</body>
</HTML>