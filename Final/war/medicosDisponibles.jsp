<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%List<String> horas = (List<String>)request.getAttribute("medicosDisponibles");%>
</head>
<body>
	<br><hr><br>
	<form action="save">
		<input type="text" value=<%= session.getAttribute("nombre")%> name="nombre" readonly><br>
		<input type="text" value=<%= request.getAttribute("fecha")%> name="fecha" readonly>
		<input type="text" value=<%= request.getAttribute("hora")%> name="hora" readonly>
		<select name='nombreMedico'>
			<% for( String h : horas  ) { %>
			<option value=<%=h %>><%=h%></option>
			<% } %>
		</select>
		<br>
		<input type="text" name="asunto" placeHolder="asunto">
		<input type="submit" value="CONFIRMAR">
	</form>
</body>
</html>