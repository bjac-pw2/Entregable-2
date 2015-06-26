<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%List<String> horas = (List<String>)request.getAttribute("horasDisponibles");%>
</head>
<body>
	<form action="medicoDisponible">
		<input type="text" value=<%= session.getAttribute("nombre")%> name="nombre" readonly id="nombre">
		<input type="text" value=<%= request.getAttribute("fecha")%> name="fecha" readonly id="fecha">
		<select name='hora' id="hora">
			<% for( String h : horas  ) { %>
			<option value=<%=h %>><%=h%></option>
			<% } %>
		</select>
		<span onClick=confirmar()> CONFIRMAR LA HORA</span>
		<script type="text/javascript" src="js/medicos.js"></script>
	</form>
</body>
</html>