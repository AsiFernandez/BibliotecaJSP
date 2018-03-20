<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*,java.util.*"%>
    <%@ page import="modelo.*" %> 
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="#" method="post">
	Titulo: <input type="text" name="titulo"><br>
	<br>
	Autor: <input type="text" name="autor"><br>
	<br>
	<input type="submit" value="guardar">	
</form>
<br>
<a href="ListarLibros.jsp"><button type="button">Volver a La Lista de libros</button></a>
</body>
</html>