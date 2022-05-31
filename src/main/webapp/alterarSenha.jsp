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
  <script type="text/javascript">
  		function validar(){
  			var senha = formuser.senha.value;
  			var rep_senha - formuser.rep_senha.value;
  			
  			if (senha == "" || senha.lenght <= 5){
  				alert('Preencha o campo senha com minimo 6 caracteres');
  				formuser.senha.focus();
  				return false;
  			}
  			
  			if(senha != rep_senha){
  				alert('Senhas diferentes');
  				form1.senha.focus();
  				return false;
  			}
  			
  			if (document.getElementById("senha").value == "") 
  			{
  				alert("Senha esta em branco");
  			}
  			else
  			{
  				alert("Dados Ok");
  			}
  		}
  </script>
</head>
<body>

<div class="container">
  <h2>Alterar Senha de Acesso:</h2>
  <form name="formuser" action="" method="POST">
    <div class="form-group">
      <label for="pwd">Nova Senha</label>
      <input type="password" class="form-control" name="senha">
    </div>
    <div class="form-group">
      <label for="pwd">Confirmar Nova senha</label>
      <input type="password" class="form-control" name="rep_senha">
    </div>
    <button type="submit" onclick="validar();" class="btn btn-primary">Atualizar</button>
  </form>
</div>

</body>
</html>