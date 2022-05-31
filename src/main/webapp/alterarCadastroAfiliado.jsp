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
<title>Alterar Afiliado</title>
</head>
<body>
	<%
	
	try {

		int id=Integer.parseInt(request.getParameter("id"));
		String aname = request.getParameter("nome");
		String aemail = request.getParameter("email");
		String asenha = request.getParameter("senha");
		String atelefone = request.getParameter("telefone");
		String aendereco = request.getParameter("endereco");
		String tpAfiliado = request.getParameter("tpAfiliado");
		String cpf = request.getParameter("cpf");
		String descricao = request.getParameter("descricao");

		String alogradouro = request.getParameter("logradouro");
		String anumero = request.getParameter("numero");
		String abairro = request.getParameter("bairro");
		String acep = request.getParameter("cep");
		String acidade = request.getParameter("cidade");
		String aestado = request.getParameter("estado");

		AfiliadoDAO dados = new AfiliadoDAO();
		Afiliado afiliado = new Afiliado();

		//colcoar todos os campos do cadastro
		afiliado.setNome(aname);
		afiliado.setEmail(aemail);
		//afiliado.setSenha(asenha);
		afiliado.setTelefone(atelefone);
		afiliado.setDescricao(descricao);
		//afiliado.setTipoAfiliado(tpAfiliado);
		afiliado.setCnpjCpf(cpf);
		afiliado.setIdCooperativa(id);
		afiliado.getEndereco().setLogradouro(alogradouro);
		afiliado.getEndereco().setNumero(anumero);
		afiliado.getEndereco().setBairro(abairro);
		afiliado.getEndereco().setCep(acep);
		afiliado.getEndereco().setCidade(acidade);
		afiliado.getEndereco().setEstado(aestado);


		dados.UpdateAfiliado(afiliado);

		EnderecoDAO enderecoDados = new EnderecoDAO();
		Endereco endereco = new Endereco();

		endereco.setIdCooperativa(afiliado.getIdCooperativa());
		endereco.setCep(acep);
		endereco.setNumero(anumero);
		endereco.setBairro(abairro);
		endereco.setEstado(aestado);
		endereco.setCidade(acidade);
		endereco.setLogradouro(alogradouro);

		enderecoDados.updateEnderecoAfiliado(endereco);
		out.println("Atualizado com Sucesso!");
		
		//response.sendRedirect("meusdadosAfiliado.jsp?id="+afiliado.getIdCooperativa());
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>