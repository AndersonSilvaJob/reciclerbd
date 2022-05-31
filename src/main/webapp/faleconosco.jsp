<%@page import="classes.FaleConosco"%>
<%@page import="classes.FaleConoscoDAO"%>
<%@page import="classes.Usuario"%>
<%@page import="classes.Endereco"%>
<%@page import="classes.UsuarioDAO"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
  <h2>Fale Conosco</h2>
  <form action="processarInserirFaleconoscoUsuario.jsp">

  <input type="hidden" class="form-control" id="idusuario" name="idusuario" value="<%=usuario.getId()%>">

<div class="form-group">
  <label for="pwd">Assunto:</label>
  <input type="text" class="form-control" id="assunto" name="assunto">
</div>
    <div class="form-group">
      <label for="comment">Mensagem:</label>
      <textarea class="form-control" rows="5" id="mensagem" name="mensagem"></textarea>
    </div>
    <button type="submit" class="btn btn-lg" style="background-color:#005c45ff; color:#fff">Enviar</button>
  </form>
</div>

<%
} catch (Exception e) {
	out.println(e.getMessage());
	}
%>
</body>
</html>
