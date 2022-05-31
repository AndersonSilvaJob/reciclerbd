<%@page import="classes.Usuario"%>
<%@page import="classes.Endereco"%>
<%@page import="classes.UsuarioDAO"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Meus Dados</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<%
String id=request.getParameter("id");
try {
	
	UsuarioDAO Usuario = new UsuarioDAO();
	Usuario usuario = Usuario.getUsuario(Integer.parseInt(id));


%>

<div class="container">
  <h2>Meus Dados</h2>
  <p>Altere os dados que desejar</p>
  <form action="alterarCadastroUsuario.jsp">
    <div class="row">
      <div class="col-sm-12">
      <input type="hidden" id="id" name="id" value="<%=usuario.getId()%>">
      <input type="hidden" id="senha" name="senha" value="<%=usuario.getSenha()%>">
      <label for="pwd">Nome:</label>
        <input type="text" class="form-control" id="nome" name="nome" maxlength="100" value="<%=usuario.getNome()%>">
      </div>
    </div>
     <div class="row">
     <div class="col">
      <label for="pwd">Cpf:</label>
        <input type="text" class="form-control" id="cpf" name="cpf" maxlength="14" value="<%=usuario.getCpf()%>">
      </div>
      <div class="col">
      <label for="pwd">E-mail:</label>
        <input type="text" class="form-control" id="email"name="email" maxlength="100" value="<%=usuario.getEmail()%>">
      </div>
     
    </div>
	    <div class="row">
      <div class="col">
      <label for="pwd">Telefone:</label>
        <input type="text" class="form-control" id="telefone"name="telefone" maxlength="11"value="<%=usuario.getTelefone()%>">
      </div>
      <div class="col">
      <label for="pwd">Celular:</label>
        <input type="text" class="form-control" id="celular"name="celular" maxlength="11" value="<%=usuario.getCelular()%>">
      </div>
    </div>
      <div class="row">
      <div class="col">
      <label for="pwd">Cep:</label>
        <input type="text" class="form-control" id="cep"name="cep" maxlength="8" value="<%=usuario.getEndereco().getCep()%>">
      </div>
      <div class="col">
      <label for="pwd">Estado:</label>
        <input type="text" class="form-control" id="estado"name="estado" maxlength="50" value="<%=usuario.getEndereco().getEstado()%>">
		</div>
		  </div>
       <div class="row">
      <div class="col">
      <label for="pwd">Bairro:</label>
        <input type="text" class="form-control" id="bairro"name="bairro" maxlength="50" value="<%=usuario.getEndereco().getBairro()%>">
      </div>
      <div class="col">
      <label for="pwd">Cidade:</label>
        <input type="text" class="form-control" id="cidade"name="cidade" maxlength="20" value="<%=usuario.getEndereco().getCidade()%>">
      </div>
    </div>
    <div class="row">
      <div class="col">
      <label for="pwd">Numero:</label>
        <input type="text" class="form-control" id="numero"name="numero" maxlength="10" value="<%=usuario.getEndereco().getNumero()%>" >
      </div>
      <div class="col">
      <label for="pwd">Logradouro:</label>
        <input type="text" class="form-control" id="logradouro"name="logradouro" maxlength="50"  value="<%=usuario.getEndereco().getLogradouro()%>">
		</div>
		</div>
    <button type="submit" class="btn btn-primary mt-3">Atualizar dados</button>
  </form>
</div>
<%
} catch (Exception e) {
	out.println(e.getMessage());
	}
%>
</body>
</html>
