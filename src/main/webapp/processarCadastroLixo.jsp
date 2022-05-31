<%@page import="classes.Lixo"%>
<%@page import="classes.LixoDAO"%>
<%@page import="classes.Afiliado"%>
<%@page import="classes.AfiliadoDAO"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Lixo</title>
</head>
<body>
	<%
		try {
			

		//colcoar todos os campos do cadastro
		String idafiliado = request.getParameter("idafiliado");
		String tipolixo = request.getParameter("tipolixo");		
		
		
		//UsuarioDAO dados = new UsuarioDAO();
		//Usuario usuario = new Usuario();
		
		LixoDAO dados = new LixoDAO();
		Lixo lixo = new Lixo();
		
		//colcoar todos os campos do cadastro
		//lixo.setIdCooperativa(id);
		lixo.setTipo(tipolixo);
		lixo.setIdCooperativa(Integer.parseInt(idafiliado));
		
		dados.cadastrarLixo(lixo);
		
		response.sendRedirect("cadastralixo.jsp?id=" + idafiliado);
		
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>