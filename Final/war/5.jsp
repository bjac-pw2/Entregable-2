<!DOCTYPE html>
<html lang="es">
<head>
	<title>Ultima Esperanza</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="styles.css">
	<link rel="stylesheet" href="sesion.css">
	<link rel="stylesheet" href="animacion.css">
	<link rel="stylesheet" href="menu.css">
</head>
<body>
	<header id="cabecera">
		<div id="titulos">
			<div id="titulo">
				<h5>CLINICA</h5>
				<h1>ULTIMA ESPERANZA</h1>
			</div>
			<div id="sesion">
				<h4>INICIAR SESION</h4>
				<form action="validaSesion" method="post">
					<input type="text" required placeholder="Usuario" name='usuario' value='' class="in">
					<input type="password" required placeholder="Password" name='password' value='' class="in">
					<input type="submit" value="ENTRAR" id="entrar">
				</form>
			</div>
		</div>
	</header>
	<nav id="menu">
		<div id="menuCenter">
			<div id="nav">
				<ul>
					<li><a href="http://5-dot-bjac-pw2.appspot.com">INICIO</a></li>
					<li><a href="1.jsp">DESCRIPCION</a></li>
					<li><a href="2.jsp">EMPRESA DESTINADA</a></li>
					<li><a href="3.jsp">VENTAJAS Y DESVENTAJAS</a></li>
					<li><a href="4.jsp">ALCANCES</a></li>
					<li><a href="#">ANTES Y DESPUES</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="portada">
		<div id="im">
			<img src='imag-001.png' title="imagenes" alt="img01">
			<img src='imag-002.png' title="imagenes" alt="img02">
			<img src='imag-003.png' title="imagenes" alt="img03">
		</div>
	</div>
	
	<hr>
	<div id="contenido">
	<div id="b">
		<div id="articulos">
			<div id="articulosDiarios">

				<h3>LA EMPRESA ANTES DE LA WEBAPP</h3>
				<hr>
				<h5></h5>
				<p>Antes de esta web App la Cl�nica Ultima Esperanza  contaba con un sistema de citas v�a telef�nico, el cual era inc�modo para los pacientes.</p>
 				
				<p>Por las largas esperas, estar apegado al celular esperando la respuesta de alg�n operador.</p>
				
			</div>
			
			<div id="articulosDiarios">
				<h3>LA EMPRESA DESPU�S DE LA WEBAPP</h3>
				<hr>
<h5></h5>
<p> Con el nuevo sistema los pacientes est�n c�modos por la sencillez con la cual pueden adquirir una cita. </p>
				<h5>MAYOR COMIDAD</h5>
				<p> Es la respuesta que tienen nuestros clientes.</p>
 			</div>
		</div>
	</div>
	</div>
	<footer id="pie">
		<div id="pieCenter">
			<div id="masInformacion">
				<div class="menus">
					<h5>Corporativo</h5>
					<ul>
						<li><a href="#">Qui�nes Somos</a></li>
						<li><a href="#">Bienvenida</a></li>
						<li><a href="#">Mision</a></li>
						<li><a href="#">Vision</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Servicios Clinicos</h5>
					<ul>
						<li><a href="#">Laboratorio Cl�nico</a></li>
						<li><a href="#">Urgencia Escolar</a></li>
						<li><a href="#">Urgencia General</a></li>
						<li><a href="#">Medicina Nuclear</a></li>
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
						<li><a href="#">Cercado</a></li>
					</ul>
					</div>
			</div>
			<div id="licencia">Derechos Reservados &copy; 2015 BJAC</div>
		</div>
	</footer>
</body>
</html>
