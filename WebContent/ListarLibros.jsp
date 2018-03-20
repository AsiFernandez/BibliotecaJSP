<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="modelo.*" %>
    <%@ page import="java.util.ArrayList" %>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
    <%
    LibroModelo libromodelo = new LibroModelo();
    ArrayList<Libro> libros = libromodelo.selectAll();
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/> 
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
</head>
<body>
<div class="container">  
  <h1>Listado de libros</h1>  
  
<table class="table" id="mitabla">
 
  <tr><th>Titulo</th><th>Autor</th><th>Acciones</th></tr> 

  
  <%


Iterator<Libro> i = libros.iterator(); 

Libro libro;
while(i.hasNext()){
	libro = i.next();
	out.print("<tr><td>" + libro.getTitulo() + "</td> <td>" + libro.getAutor() + "</td> <td> <a href='FichaDeLibro.jsp?id="  +libro.getId() + "'>VER</a>" + " / "+ "<a href='ActualizarLibro.jsp?id=" + libro.getId() + "'> Actualizar</a> </td> </tr>");
}

%>

</table>  
</div>  
<button type="button" onclick="window.location.href='CreadorDeLibros.jsp'">Crear Libro </button>
<script>

</script>

</table>
</body>
</html>