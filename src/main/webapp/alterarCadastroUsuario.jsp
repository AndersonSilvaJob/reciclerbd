<%@page import="classes.Usuario"%>
<%@page import="classes.UsuarioDAO"%>
<%@page import="classes.Endereco"%>
<%@page import="classes.EnderecoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar Usuario</title>
</head>
<body>
	<%
	
	try {
		int id=Integer.parseInt(request.getParameter("id"));
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String celular = request.getParameter("celular");
		String telefone = request.getParameter("telefone");
		String logradouro = request.getParameter("logradouro");		
		String numero = request.getParameter("numero");
		String bairro = request.getParameter("bairro");
		String cep = request.getParameter("cep");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");

		UsuarioDAO dados = new UsuarioDAO();
		Usuario usuario = new Usuario();
		
		//colcoar todos os campos do cadastro
		usuario.setNome(nome);
		usuario.setCpf(cpf);
		usuario.setEmail(email);
		//usuario.setSenha(senha);
		usuario.setTelefone(telefone);
		usuario.setCelular(celular);
		usuario.setId(id);
		
		
		dados.atualizarUsuario(usuario);
		
			
			    		
		EnderecoDAO enderecoDados = new EnderecoDAO();
		Endereco endereco = new Endereco();
		
		endereco.setIdUsuario(usuario.getId());
		endereco.setCep(cep);
		endereco.setNumero(numero);
		endereco.setBairro(bairro);
		endereco.setEstado(estado);
		endereco.setCidade(cidade);
		endereco.setLogradouro(logradouro);


		enderecoDados.updateEnderecoUsuario(endereco);
		out.println("Atualizado com Sucesso!");
		
		//response.sendRedirect("meusdados.jsp?id="+usuario.getId());
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>