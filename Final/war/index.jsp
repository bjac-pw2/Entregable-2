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
				<h4>INICIAR SESION: </h4>
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
					<li><a href="#">INICIO</a></li>
					<li><a href="1.jsp">DESCRIPCION</a></li>
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
				<h3>ARTICULO DIARIO</h3>
				<hr>
				<h5>Cuida tu cuerpo</h5>
				<p>La prevenci�n y la detecci�n precoz de la enfermedad
				 son los dos pilares b�sicos para mantener el estado de 
				 salud. Adem�s de tener unos h�bitos de vida saludable, 
				 la vacunaci�n es fundamental para la prevenci�n. 
				 Respecto a la detecci�n precoz, la realizaci�n de 
				 chequeos peri�dicos es clave: estudios urol�gicos 
				 para el c�ncer de pr�stata y ginecol�gicos para 
				 c�nceres de mama y c�rvix, colonoscopias para el 
				 de colon, espirometr�a para EPOC, etc.</p>
				 <h5>Sonr�a!</h5>
				 <p>Las emociones positivas, como la alegr�a, el entusiasmo, 
				 la satisfacci�n o el orgullo, son una fuente necesaria de 
				 bienestar y calidad de vida y proyectan una imagen nuestra 
				 m�s atractiva, lo que favorece que otras personas positivas 
				 deseen aproximarse a nosotros.</p>
				<h5>Noticias</h5>
				<p>Aqu� encontrar�s informaci�n sobre tratamientos y consejos de salud.</p>
			</div>
			<div id="articulosProfesionales">
				<h3>INNOVACION Y AVANCES</h3>
				<hr>
				<h5>Envejecimiento precoz: investigadores descubren y reparan los defectos de las c�lulas enfermas </h5>
				<p>Investigadores del Institut Pasteur y del CNRS, 
				en colaboraci�n con cient�ficos del CEA y del Institut 
				Gustave Roussy, en Francia, han conseguido restablecer 
				una actividad normal en las c�lulas de pacientes con 
				s�ndrome de envejecimiento precoz, el s�ndrome de Cockayne.</p>
				<p>Han descubierto la implicaci�n en esta patolog�a de una enzima, 
				la proteasa HTRA3. Con excesiva expresi�n en los pacientes, 
				engendra una disfunci�n de las mitocondrias, que desempe�an 
				un papel clave en la aparici�n de los s�ntomas de 
				envejecimiento en los ni�os. Estos trabajos publicados 
				en la revista PNAS Plus describen uno de los mecanismos 
				responsables del envejecimiento precoz desconocido hasta 
				la fecha y podr�n esclarecer el mecanismo del envejecimiento 
				en general.</p>
				<h5>Avances en la medicina</h5>
				<p>Aqu� encontrar�s informaci�n sobre los avances en la medicina</p>
			</div>
		</div>
		<div id="noticias">
			<h3>Avisos importantes</h3>
			<h4>AVISO #1</h4>
			<p>Se comunica a todos los integrantes del trabajo final de pw2
			(CLINICA "LA ULTIMA ESPERANZA"), 
			que ma�ana (Sabado 13) se realizara el trabajo, que se presentara el miercoles de la siguiente semana.</p>
			<h4>AVISO #2</h4>
			<p>Se comunica a todos los integrantes del trabajo final de pw2 (CLINICA "LA ULTIMA ESPERANZA"), 
			que ma�ana (Sabado 20) se realizara el trabajo. LUGAR: SUNAT.</p>
			<h4>AVISO #3</h4>
			<p>Se comunica a todos los integrantes del trabajo final de pw2 (CLINICA "LA ULTIMA ESPERANZA"), 
			que el lunes 22 se terminar� el proyecto para la presentaci�n del entregable N� 2. LUGAR: CEDIS.</p>
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