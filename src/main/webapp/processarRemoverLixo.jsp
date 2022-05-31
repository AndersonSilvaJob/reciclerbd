<%@page import="classes.Usuario"%>
<%@page import="classes.LixoDAO"%>
<%@page import="classes.Lixo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	try {
		String matricula = request.getParameter("matricula");
		String id = request.getParameter("id");
		LixoDAO dados = new LixoDAO();
		Lixo lixo = new Lixo();
		lixo.setIdLixo(Integer.parseInt(matricula));
		dados.deletalixo(Integer.parseInt(matricula));
		//response.sendRedirect("cadastralixo.jsp?id="+id);
		out.println("Removido com Sucesso");
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>