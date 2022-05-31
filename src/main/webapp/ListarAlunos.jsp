<%@page import="classes.Usuario"%>
<%@page import="classes.UsuarioDAO"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Listar Usuarios</title>
</head>
<body>
	<div class="container">
		<%
		try {
			
			UsuarioDAO dados = new UsuarioDAO();
			List<Usuario> lista = dados.getUsuarios();
		%>
		<table class="table">
			<thead>
				<tr>
					<th>Matricula</th>
					<th>Nome</th>
					<th>CPF</th>
					<th>...</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Usuario usuario : lista) {
					out.print("<tr>");
					out.print("<td>" + usuario.getCpf() + "</td>");
					out.print("<td>" + usuario.getNome() + "</td>");
					out.print("<td><button type=\"button\" class=\"btn btn-danger\" onClick=\"formConfimarDelete("
					+ usuario.getId() + ")\">Remover</button></td>");
					out.print("</tr>");
				}
				%>
			</tbody>
		</table>
		<%
		} catch (Exception e) {
		System.out.println(e.getMessage());
		}
		%>
		<form action="processarCadastroAluno.jsp">
			<div class="form-group">
				<label for="matricula">Matricula</label> <input type="text"
					class="form-control" placeholder="Informe a matricula"
					id="matricula" name="matricula">
			</div>
			<div class="form-group">
				<label for="nome">Nome</label> <input type="text"
					class="form-control" placeholder="Informe o nome" id="nome"
					name="nome">
			</div>
			<div class="form-group">
				<label for="cpf">CPF</label> <input type="text" class="form-control"
					placeholder="Informe o CPF" id="cpf" name="cpf">
			</div>
			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>
	</div>
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Atenção</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">Deseja realmente remover este aluno?</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" onclick="removerAluno()">Remover</button>

				</div>

			</div>
		</div>
	</div>
	<script>
		let matriculaRemocao;

		$(document)
				.ready(
						function() {
							formConfimarDelete = function(matricula) {
								matriculaRemocao = matricula;
								$("#myModal").modal();
							}
							removerAluno = function() {
								window.location.href = "processarRemoverAluno.jsp?matricula="
										+ matriculaRemocao;
							}
						});
	</script>
</body>
</html>