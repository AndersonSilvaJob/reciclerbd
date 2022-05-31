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
<title>Cadastrar Afiliado</title>
</head>
<body>
	<%
	try {

		String aname = request.getParameter("aname");
		String aemail = request.getParameter("aemail");
		String asenha = request.getParameter("asenha");
		String atelefone = request.getParameter("atelefone");
		String aendereco = request.getParameter("aendereco");
		String tpAfiliado = request.getParameter("tpAfiliado");
		String documento = request.getParameter("documento");
		String mensagem = request.getParameter("mensagem");
		

		String alogradouro = request.getParameter("alogradouro");
		String anumero = request.getParameter("anumero");
		String abairro = request.getParameter("abairro");
		String acep = request.getParameter("acep");
		String acidade = request.getParameter("acidade");
		String aestado = request.getParameter("aestado");

		AfiliadoDAO dados = new AfiliadoDAO();
		Afiliado afiliado = new Afiliado();

		//colcoar todos os campos do cadastro
		afiliado.setNome(aname);
		afiliado.setEmail(aemail);
		afiliado.setSenha(asenha);
		afiliado.setTelefone(atelefone);
		afiliado.setTipoAfiliado(tpAfiliado);
		afiliado.setCnpjCpf(documento);
		afiliado.setDescricao(mensagem);
		afiliado.getEndereco().setLogradouro(alogradouro);
		afiliado.getEndereco().setNumero(anumero);
		afiliado.getEndereco().setBairro(abairro);
		afiliado.getEndereco().setCep(acep);
		afiliado.getEndereco().setCidade(acidade);
		afiliado.getEndereco().setEstado(aestado);


		dados.cadastrarAfiliado(afiliado);

		EnderecoDAO enderecoDados = new EnderecoDAO();
		Endereco endereco = new Endereco();

		endereco.setIdCooperativa(afiliado.getIdCooperativa());
		endereco.setCep(acep);
		endereco.setNumero(anumero);
		endereco.setBairro(abairro);
		endereco.setEstado(aestado);
		endereco.setCidade(acidade);
		endereco.setLogradouro(alogradouro);

		enderecoDados.cadastrarEnderecoAfiliado(endereco);
		
		response.sendRedirect("escolhaLogin.jsp");
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>