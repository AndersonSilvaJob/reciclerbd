<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/globalStyle.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap"
	rel="stylesheet">
<style>
body {
	display: flex;
	aling-items: center;
	justify-content: center;
	width: 100vw;
	height: 100vh;
	background: linear-gradient(45deg, #3CB371, #228B22, #2E8B57, #008000);
	background-size: 300% 300%;
	animation: colors 15s ease infinite;
	font-family: 'Ubuntu', sans-serif;
}

@
keyframes colors { 0%{
	background-position: 0% 50%;
}

50
%
{
background-position
:
100%
50%;
}
100
%
{
background-position
:
0%
50%;
}
}
.container {
	margin-top: 50px;
	background-color: #fff;
	width: 80vw;
	height: 740px;
	display: flex;
	align-items: center;
	justify-content: center;
	align-content: center;
	border-radius: 1rem;
	box-shadow: 0 0 2em #555;
}

input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=email] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 5px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 20px;
}

input[type=password] {
	width: 100%;
	display: inline-block;
	padding: 14px 20px;
	margin: 8px 0;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit]:hover {
	background-color: #005c45ff;
}

.form {
	width: 100%;
	height: 100%;
	border: none;
	border-radius: 5px;
	padding: 1em;
	background-color: #fff;
}

.container .form form .row {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	padding: 10px;
}

.container .form form .row .column {
	width: 33%;
	margin: 0 5px;
}

.container .form form .row .mt {
	width: 50%;
}

textarea {
	width: 100%;
	height: 100px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	font-size: 16px;
	resize: none;
}

.chek {
	display: flex;
	align-items: center;
	justify-content: space-around;
	padding: 5px;
}

.form h2 {
	text-align: center;
}

.container .form a {
	text-align: center;
	text-decoration: none;
	color: #111;
}

@media ( max-width :820px) {
	.container {
		height: 90em;
		background-color: #fff;
	}
	.container .form form .row {
		display: flex;
		flex-direction: column;
		padding: 10px;
	}
	.container .form form .row .column {
		width: 100%;
		margin: 5px;
	}
	.container .form form .row .mt {
		width: 100%;
	}
}
</style>

<title>RECICLER</title>
</head>
<body>


	<div class="container">
		<div class="form">
			<a href="index.jsp"><h2>RECICLER</h2></a>
			<form action="processarCadastroAfiliado.jsp">
				<div class="row">
					<div class="column mt">
						<label for="fname">Nome:</label> <input type="text" id="aname"
							maxlength="100" name="aname"
							placeholder="Digite seu nome ou razão social...">
					</div>
					<div class="column mt">
						<label for="email">Email:</label> <input type="email" id="aemail"
							maxlength="100" name="aemail" placeholder="Digite seu email...">
					</div>
				</div>
				<div class="row">
					<div class="column  mt">
						<label for="senha">Senha:</label> <input type="password"
							id="asenha" maxlength="50" name="asenha"
							placeholder="crie uma senha de acesso...">
					</div>
					<div class="column mt">
						<label for="telefone">Telefone:</label> <input type="text"
							id="atelefone" style="padding: 14px 20px; margin: 8px 0"
							maxlength="11" name="atelefone"
							placeholder="Digite seu Telefone...">
					</div>
				</div>
				<div class="row">
					<div class="column">
						<label for="endereco">Logradouro:</label> <input type="text"
							id="alogradouro" name="alogradouro" maxlength="50"
							placeholder="Digite seu logradouro...">
					</div>
					<div class="column">
						<label for="endereco">Numero:</label> <input type="text"
							id="anumero" name="anumero" maxlength="10"
							placeholder="Digite seu Numero...">
					</div>
					<div class="column">
						<label for="endereco">Bairro:</label> <input type="text"
							id="abairro" name="abairro" maxlength="50"
							placeholder="Digite seu Bairro...">
					</div>
				</div>
				<div class="row">
					<div class="column">
						<label for="endereco">Cep:</label> <input type="text" id="acep"
							name="acep" maxlength="8" placeholder="Digite seu Cep...">
					</div>
					<div class="column">
						<label for="endereco">Cidade:</label> <input type="text"
							id="acidade" name="acidade" maxlength="20"
							placeholder="Digite seu Cidade...">
					</div>
					<div class="column">
						<label for="endereco">Estado:</label> <input type="text"
							id="aestado" name="aestado" maxlength="50"
							placeholder="Digite seu Cidade...">
					</div>
				</div>
				<label for="country">Tipode Afiliado:</label>
				<div class="row">
					<div class="column mt">
						<select id="tpAfiliado" name="tpAfiliado">
							<option value="cnpj">CNPJ</option>
							<option value="cpf">CPF</option>
						</select>
					</div>
					<div class="column mt">
						<input type="text" id="documento" name="documento"
							style="padding: 14px 20px; margin: 8px 0"
							placeholder="Digite o numero do comento escolhido..."
							maxlength="14">
					</div>
				</div>
				<label for="comment">Descreva suas ativadades:</label>
				<div class="row">
					<textarea class="form-control" rows="5" id="mensagem"
						name="mensagem"></textarea>
				</div>
				<input type="submit" value="Enviar">
			</form>
		</div>
	</div>


</body>
</html>