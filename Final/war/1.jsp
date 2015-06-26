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
					<li><a href="#">DESCRIPCION</a></li>
					<li><a href="2.jsp">EMPRESA DESTINADA</a></li>
					<li><a href="3.jsp">VENTAJAS Y DESVENTAJAS</a></li>
					<li><a href="4.jsp">ALCANCES</a></li>
					<li><a href="5.jsp">ANTES Y DESPUES</a></li>
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
				<h3>PARA EL PACIENTE</h3>
				<hr>
				<h5>Sistema de citas: </h5>
				<p>El paciente podr� sacar citas con el doctor que desea, en el horario m�s c�modo.</p>
 				<h5>Historial m�dico: </h5>
				<p>Usted podr� ver su historial en la web. Este contendr� sus citas realizadas, prescripciones m�dicas, ex�menes realizados.</p><br>
				<h3>PARA EL MEDICO</h3>
				<hr>
				<h5>Control de citas: </h5>
				<p>El m�dico tendr� el n�mero de citas que debe atender por  d�a.</p>
				<h5>Control de medicamentos: </h5>
				<p>El m�dico contara con la informaci�n del stock de medicamentos.</p>
				<h5>Ex�menes: </h5>
				<p>Tend�a una exclusiva interfaz en la cual ser� m�s dif�cil la administraci�n de la informaci�n de los ex�menes.</p>
				<h5>Prescripciones m�dicas: </h5>
				<p>La receta m�dica ser�a c�moda para el m�dico.</p>
			</div>
			
			<div id="articulosDiarios">
				<h3>Para el administrador (Opciones Exclusivas):</h3>
				<hr>
				<h5>Lista de pacientes: </h5>
				<p>Podr� disponer la informaci�n de todos los pacientes de la Cl�nica Ultima Esperanza. </p>
				<h5>Lista de m�dicos: </h5>
				<p>Podr� disponer la informaci�n de todos los m�dicos de la Cl�nica Ultima Esperanza. </p>
				<h5>Lista de medicamentos: </h5>
				<p>Podr� disponer la informaci�n de todos los medicamentos de la Cl�nica Ultima Esperanza. </p>
				<h5>Lista  de administradores: </h5>
				<p>Podr� disponer la informaci�n de todos los administradores de la Cl�nica Ultima Esperanza. </p>
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
