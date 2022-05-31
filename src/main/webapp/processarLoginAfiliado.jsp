<%@page import="classes.Afiliado"%>
<%@page import="classes.Endereco"%>
<%@page import="classes.EnderecoDAO"%>
<%@page import="classes.AfiliadoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Usuario</title>
</head>
<body>
	<%
	try {

		//colcoar todos os campos do cadastro
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");

		AfiliadoDAO dados = new AfiliadoDAO();

		Afiliado afiliado = dados.login(email, senha);

		if (afiliado.getIdCooperativa() > 0) {
			response.sendRedirect("areaAfiliado.jsp?id=" + afiliado.getIdCooperativa());
		} else {
			response.sendRedirect("cadastroAfiliado.jsp");
		}

	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>