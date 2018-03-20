<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="modelo.*" %>
     <%@ page import="java.util.ArrayList" %>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	LibroModelo libroModelo = new LibroModelo();
	Libro libro  = libroModelo.select(id);
	%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
			<div class="row">
				<div class="container">
					<div class="jumbotron">
						<h1 class="display-4">Biblioteca</h1>
						<p class="lead"> Bienvenido a la pagina de informacion de los libros </p>
					</div>
				</div>
			</div>
	</div>
	
<div >
<table  width="300px" heigth="80 px" align-text="center">
<tr><td>Titulo:</td><td> <%out.println(libro.getTitulo());%>  </td></tr>
<tr><td>Autor:</td><td> <%out.println(libro.getAutor());%></td></tr>
<tr><td>Imagen:</td><td><% out.println(libro.getImagen());%></td></tr>
</table>

</div>
</body>
</html>