<%@page import="classes.Usuario"%>
<%@page import="classes.UsuarioDAO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Cadastro - Gerador</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
main{
	display:flex;
	width:100%;
	height:100vh;
	align-items: center;
	justify-content: center; 
	background:linear-gradient(45deg, #3CB371, #228B22, #2E8B57, #008000);
	background-size: 300% 300%;
	animation: colors 15s ease infinite;
	font-family: 'Lexend Deca', sans-serif;
}
@keyframes colors{
	0%{
		background-position: 0% 50%;
	}
	50%{
		background-position: 100% 50%;
	}
	100%{
		background-position: 0% 50%;
	}
}
.container{
	width:55%;
	height:450px;
	background:#fff;
	padding:3em 1em;
	border-radius: 1rem;
	box-shadow: 0 0 2em #555;
}
.container h2{
	text-align:center;
}
.container  a{
	text-align:center;
	text-decoration:none;
	color:#111;
}
</style>

<body>
	<main>
 		<div class="container">
            <a href="index.jsp"><h2>RECICLER</h2></a>

            <form action="processarCadastroUsuario.jsp">
                <div class="row" method="post">
                    <div class="col-sm-7">
                        <input type="text" class="form-control mt-3" id="email" placeholder="Informe seu Email" name="email" required>
                    </div>
                    <div class="col-sm-5">
                        <input type="password" class="form-control mt-3" id="senha" placeholder="Informe sua senha" name="senha" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-8">
                        <input type="text" class="form-control mt-3" id="nome" placeholder="Nome" name="nome" required>
                    </div>
                    <div class="col-sm-4">
                        <input type="text" class="form-control mt-3 "  maxlength="14" id="cpf" placeholder="CPF" name="cpf" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <input type="text" class="form-control mt-3" id="celular" placeholder="Celular" name="celular" required>
                    </div>
                    <div class="col-sm-6">
                        <input type="text" class="form-control mt-3 " id="telefone" placeholder="Telefone" name="telefone">
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-7">
                        <input type="text" class="form-control mt-3" id="logradouro" placeholder="Logradouro" name="logradouro" required>
                    </div>
                    <div class="col-sm-2">
                        <input type="text" class="form-control mt-3 " id="numero" placeholder="Numero" name="numero" required>
                    </div>
                    <div class="col-sm-3"></dv>
                        <input type="text" class="form-control mt-3 " id="bairro" placeholder="Bairro" name="bairro" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-3">
                        <input type="text" class="form-control mt-3" id="cep" placeholder="CEP" name="cep" required>
                    </div>
                    <div class="col-sm-5">
                        <input type="text" class="form-control mt-3 " id="cidade" placeholder="Cidade" name="cidade" required>
                    </div>
                    <div class="col-sm-4"></dv>
                        <input type="text" class="form-control mt-3 " id="estado" placeholder="Estado" name="estado" required>
                    </div>
                </div>

                <button type="submit" onclick="cliquebotao()"  class="btn btn-success mt-3">Cadastrar</button>
            </form>
        </div>
	</main>
        <script>
            cliquebotao = function () {
                //DECLARA VARIAVEIS
                var nome;
                var email;
                var cpf;
                var celular;
                var logradouro;
                var numero;
                var bairro;
                var cep;
                var cidade;
                var estado;
                var senha;

                //RECEBER AS ENTRADAS
                nome = document.getElementById('nome').value;
                senha = document.getElementById('senha');
                email = document.getElementById('email').value;
                cpf = document.getElementById('cpf').value;
                celular = document.getElementById('celular').value;
                logradouro = document.getElementById('endereco').value;
                numero = document.getElementById('numero').value;
                bairro = document.getElementById('bairro').value;
                cep = document.getElementById('cep').value;
                cidade = document.getElementById('cidade').value;
                estado = document.getElementById('estado').value;

                //PROCESSANDO
                if (email == "") {
                    alert('Informe o email!');
                    return;
                } else
                if (senha== "") {
                    alert('Informe a senha!');
                    return;
                } else
                if (nome == "") {
                    alert('Informe o nome!');
                    return;
                } else
                if (cpf == "") {
                    alert('Informe o cpf!');
                    return;
                } else
                if (logradouro == "") {
                    alert('Informe o logradouro!');
                    return;
                } else
                if (numero == "") {
                    alert('Informe o número!');
                    return;
                } else
                if (bairro == "") {
                    alert('Informe o bairro!');
                    return;
                } else
                if (cep == "") {
                    alert('Informe o cep!');
                    return;
                } else
                if (cidade == "") {
                    alert('Informe a cidade!');
                    return;
                } else
                if (estado == "") {
                    alert('Informe o estado!');
                    return;
                } else
                if (celular == "") {
                    alert('Informe o número do celular!');
                    return;
                }

            }

        </script>
</body>
</html>

