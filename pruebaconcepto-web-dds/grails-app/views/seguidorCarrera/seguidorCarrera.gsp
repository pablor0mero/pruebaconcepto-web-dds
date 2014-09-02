<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="main" />
	<title>Seguidor de Carrera</title>
</head>
<body>
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
											${materiaInstance.ubicacionMateria.toString }
										</td>
									</tr>
								</g:each>
							</tbody>
						</table>
					</div>
					<div class="col-md-6">
					</div>
				</div>
			</div>	
       </div>
</body>
</HTML>