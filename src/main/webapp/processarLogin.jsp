<%@page import="classes.Usuario"%>
<%@page import="classes.Endereco"%>
<%@page import="classes.EnderecoDAO"%>
<%@page import="classes.UsuarioDAO"%>
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
		
		
		UsuarioDAO Usuario = new UsuarioDAO();

		Usuario usuario = Usuario.login(email,senha);
		
		if(usuario.getId()>0){
		 response.sendRedirect("areaUsuario.jsp?id="+usuario.getId());	
		}else{
			out.println("Tente Novamente!");
		}
		
		
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>