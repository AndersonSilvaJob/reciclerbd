<%@page import="classes.Lixo"%>
<%@page import="classes.LixoDAO"%>
<%@page import="classes.Afiliado"%>
<%@page import="classes.AfiliadoDAO"%>
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
<title>Cadastra lixo</title>
</head>
<body>
	<div class="container">
		<%
		String id = request.getParameter("id");
		try {

			AfiliadoDAO dadosAfiliado = new AfiliadoDAO();
		    Afiliado afiliado = dadosAfiliado.pegarAfiliado(Integer.parseInt(id));


			
			//UsuarioDAO dados = new UsuarioDAO();
			//List<Usuario> lista = dados.getUsuarios();
			
			LixoDAO dados = new LixoDAO();
			List<Lixo> lista = dados.getLixos(id);
			
		%>
		
		
		<table class="table">
			<thead>
				<tr>
					<!-- <th>Id lixo</th> -->
					<th>Tipo do lixo</th>
					<th>Excluir</th>
					<th>...</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Lixo lixo : lista) {
					out.print("<tr>");
					//out.print("<td>" + lixo.getIdLixo() + "</td>");
					out.print("<td>" + lixo.getTipo() + "</td>");
					out.print("<td><button type=\"button\" class=\"btn btn-danger\" onClick=\"formConfimarDelete("
					+ lixo.getIdLixo() + ")\">Remover</button></td>");
					out.print("</tr>");
				}
				%>
			</tbody>
		</table>
		<form action="processarCadastroLixo.jsp">
			<div class="form-group">
			<input type="hidden"  id="idafiliado" name="idafiliado" value="<%=afiliado.getIdCooperativa()%>">
      <label for="sel1">Selecione o lixo que sua empresa deseja coletar:</label>
      <select class="form-control" id="tipolixo" name="tipolixo">
        <option>Oleo de Cozinha</option>
        <option>Eletronicos</option>
        <option>Eletrodomesticos</option>
        <option>Entulhos</option>
        <option>Isopor</option>
        <option>Lampadas</option>
        <option>Moveis</option>
        <option>Metal</option>
        <option>Papel e Papelao</option>
        <option>Pilha</option>
        <option>Plastico</option>
        <option>Poda de plantas</option>
      </select>
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
				<div class="modal-body">Deseja realmente remover este tipo de lixo?</div>

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
								window.location.href = "processarRemoverLixo.jsp?matricula="
										+ matriculaRemocao;
							}
						});
	</script>
		<%
		} catch (Exception e) {
		System.out.println(e.getMessage());
		}
		%>
</body>
</html>