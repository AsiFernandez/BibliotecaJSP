<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*,java.util.*"%>
    <%@ page import="modelo.*" %> 
  
 <%
	if(request.getParameter("cambiar") != null){
	Libro libro = new Libro();
	libro.setId(Integer.parseInt(request.getParameter("id")));
	libro.setAutor(request.getParameter("autor"));
	libro.setTitulo(request.getParameter("titulo"));
	LibroModelo libroModelo = new LibroModelo();
	libroModelo.update(libro);
	
	out.print(
			"  </strong> Los cambios se han guardado correctamente. </div>");
	
	}else{
	
	
%>

  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="#" method="POST">
	<input type="hidden" name="id" value="<%=request.getParameter("idlibro")%>">
  Titulo:<br>
  <input type="text" name="titulo" value="">
  <br>
  Autor:<br>
  <input type="text" name="autor" value="">
  <br>
  <input type="submit" name="cambiar" value="cambiar">
</form> 

<%} %>

</body>
</html>