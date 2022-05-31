<%@page import="classes.Afiliado"%>
<%@page import="classes.Endereco"%>
<%@page import="classes.EnderecoDAO"%>
<%@page import="classes.AfiliadoDAO"%>
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
	
	AfiliadoDAO dados = new AfiliadoDAO();
	Afiliado afiliado = dados.pegarAfiliado(Integer.parseInt(id));


%>

<div class="container">
  <h2>Meus Dados</h2>
  <p>Altere os dados que desejar</p>
  <form action="alterarCadastroAfiliado.jsp">
    <div class="row">
      <div class="col-sm-12">
      <input type="hidden" name="id" value="<%=afiliado.getIdCooperativa()%>">
      <label for="pwd">Nome:</label>
        <input type="text" class="form-control" id="nome" name="nome" maxlength="100" value="<%=afiliado.getNome()%>">
      </div>
    </div>
     <div class="row">
     <div class="col">
      <label for="pwd">Cpf ou Cnpj:</label>
        <input type="text" class="form-control" id="cpf" name="cpf" maxlength="14" value="<%=afiliado.getCnpjCpf()%>">
      </div>
      <div class="col">
      <label for="pwd">E-mail:</label>
        <input type="text" class="form-control" id="email"name="email" maxlength="100" value="<%=afiliado.getEmail()%>">
      </div>
           <div class="col">
      <label for="pwd">Telefone:</label>
        <input type="text" class="form-control" id="telefone"name="telefone" maxlength="11"value="<%=afiliado.getTelefone()%>">
      </div>
    </div>
      <div class="row">
      <div class="col">
      <label for="pwd">Cep:</label>
        <input type="text" class="form-control" id="cep"name="cep" maxlength="8" value="<%=afiliado.getEndereco().getCep()%>">
      </div>
      <div class="col">
      <label for="pwd">Estado:</label>
        <input type="text" class="form-control" id="estado"name="estado" maxlength="50" value="<%=afiliado.getEndereco().getEstado()%>">
		</div>
		  </div>
       <div class="row">
      <div class="col">
      <label for="pwd">Bairro:</label>
        <input type="text" class="form-control" id="bairro"name="bairro" maxlength="50" value="<%=afiliado.getEndereco().getBairro()%>">
      </div>
      <div class="col">
      <label for="pwd">Cidade:</label>
        <input type="text" class="form-control" id="cidade"name="cidade" maxlength="20" value="<%=afiliado.getEndereco().getCidade()%>">
      </div>
    </div>
    <div class="row">
      <div class="col">
      <label for="pwd">Numero:</label>
        <input type="text" class="form-control" id="numero"name="numero" maxlength="10" value="<%=afiliado.getEndereco().getNumero()%>" >
      </div>
      <div class="col">
      <label for="pwd">Logradouro:</label>
        <input type="text" class="form-control" id="logradouro"name="logradouro" maxlength="50" value="<%=afiliado.getEndereco().getLogradouro()%>">
		</div>
		</div>
			    <div class="row">
      <div class="col">
      <label for="pwd">Descrição:</label>
        <textarea class="form-control" rows="5" id="descricao" maxlength="250" name="descricao"><%=afiliado.getDescricao()%></textarea>
      </div>
    </div>
    <button type="submit" class="btn btn-success mt-3">Atualizar dados</button>
  </form>
</div>
<%
} catch (Exception e) {
	out.println(e.getMessage());
	}
%>
</body>
</html>
