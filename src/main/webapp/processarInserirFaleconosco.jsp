<%@page import="classes.FaleConosco"%>
<%@page import="classes.FaleConoscoDAO"%>
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
		String idafiliado = request.getParameter("idafiliado");
		String assunto = request.getParameter("assunto");
		String mensagem = request.getParameter("mensagem");
		
		FaleConoscoDAO dados = new FaleConoscoDAO();
		FaleConosco faleconosco = new FaleConosco();
		
		faleconosco.setAssunto(assunto);
		faleconosco.setMensagem(mensagem);
		faleconosco.getAfiliado().setIdCooperativa(Integer.parseInt(idafiliado));
		
		dados.inserirFaleConoscoAfiliado(faleconosco);
		out.println("Enviado com Sucesso!");
		
		
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>