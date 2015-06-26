<!DOCTYPE html>
<html lang="es">
<head>
	<title>Ultima Esperanza</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="styles.css">
	<link rel="stylesheet" href="sesion.css">
	<link rel="stylesheet" href="animacion.css">
	<link rel="stylesheet" href="menu.css">
	<link rel="stylesheet" href="input.css">
</head>
<body>
	<header id="cabecera">
		<div id="titulos">
			<div id="titulo">
				<h5>CLINICA</h5>
				<h1>ULTIMA ESPERANZA</h1>
			</div>
			<div id="sesion">
				<h4>SESION INICIADA COMO:</h4>
				<form action="cerrarSesion" method="post">
				<% HttpSession sesion= request.getSession(); String nombre=(String) sesion.getAttribute("nombre");%>
				<%if(nombre!=null){%>
					Usuario: <%=nombre %></br>
					Tipo: <%=sesion.getAttribute("tipo")%><br/>
					<input type="submit" value="Salir" id="entrar">
				<% }else{
					response.sendRedirect("http://bjac-pw2.appspot.com/");
				}
				%>		
				</form>
			</div>
		</div>
	</header>
	<nav id="menu">
		<div id="menuCenter">
			<div id="nav">
				<ul>
					<li><a href="controlJSP?option=6">INICIO</a>
					</li>
					<li><a href='horario.jsp'>HORARIO</a></li>
					<li><a href='#'>MEDICAMENTO</a>
						<div>
							<ul>
								<li><a href="controlJSP?option=14">REGISTRAR</a></li>
								<li><a href="controlJSP?option=10">AGREGAR STOCK</a></li>
								<li><a href="listaMedicamento">LISTAR</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<hr>
	<div id="contenido">
		
		<div class="tituloEntrada">NUEVO MEDICAMENTO</div>
		<div class="cuerpoEntrada">
		<form action='/regMedicamento' class='receta' method='get'>
		<span class='lf'>Nombre: </span><input required type='text' name='nombre' pattern="[a-zA-Z]+(\s)*[a-zA-Z]*" ><br>
		<span class='lf' >Selecciona el tipo: </span>
			<select name='tipo'>
					<option value='oral'>Oral</option>
					<option value='inyectable'>Inyectable</option>
					<option value='pomada'>Pomada</option>
					<option value='tableta'>Tableta</option>
			</select><br>
			
	<span class='lf'>Ingrese el stock: </span><input required type='number' min='1' name='stock'><br>
	<button class='boton' type='submit'>Guardar</button><br>
	
	</form>
		
		
	</div>
	</div>
	<footer id="pie">
		<div id="pieCenter">
			<div id="masInformacion">
				<div class="menus">
					<h5>Corporativo</h5>
					<ul>
						<li><a href="#">Quiénes Somos</a></li>
						<li><a href="#">Bienvenida</a></li>
						<li><a href="#">Mision</a></li>
						<li><a href="#">Vision</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Servicios Clinicos</h5>
					<ul>
						<li><a href="controlJSP?option=4">Nuestros especialistas</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Instituciones Relacionadas</h5>
					<ul>
						<li><a href="http://www.unsa.edu.pe/" target='_blank'>UNSA</a></li>
						<li><a href="http://www.episunsa.edu.pe/web/" target='_blank'>EPIS - UNSA</a></li>
						<li><a href="https://github.com/bjac-pw2/ultima-esperanza" target='_blank'>GITHUB</a></li>
						<li><a href="https://docs.google.com/document/d/1irMet0N5NQQ_5ddwcRHt6hbr19fHIGMVPGSA_EJkHb4/edit?pli=1" target='_blank'>MAPPING</a></li>
						<li><a href="https://docs.google.com/document/d/1Q33PgipxpBZ2DrHob4QLG_NrKgr1pQLO1BQh8XSOleM/edit?pli=1" target='_blank'>TESTING</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Sedes Arequipa</h5>
					<ul>
						<li>Cercado</li>
					</ul>
					</div>
			</div>
			<div id="licencia">Derechos Reservados &copy; 2015 BJAC</div>
		</div>
	</footer>
</body>
</html>