<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
<title>RECICLER - Login</title>
<style>
body{
	font-family:'Ubuntu', sans-serif;
}
.formArea{
	/*margin-top: 5rem;*/
	background-color: #fff;
	width:100%;
	height:100%;
	display: flex;
	align-items: center;
	justify-content: center; 
	align-content: center;
	
}
input[type=text]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password]{
  width: 100%;
  padding: 12px 20px;
  margin: 20px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color:#04AA6D;
  color:#fff;
  padding: 14px 20px;
  margin: 80px 0 0 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
  font-size: 18px;
}

input[type=submit]:hover {
  background-color: #005c45ff;
}

section {
  width: 100%;
  border-radius: 5px;
  padding: 30px;
  color:#010101;
}

section h1{
	text-aling:center;
}
h3{
	margin: 30px 10px;
}

.senh{
	margin: 20px 0;
}

.formArea section a{
	text-align:center;
	text-decoration:none;
	color:#111;
}


</style>
</head>
<body>

	<div class="formArea">
		<section>
			<h1>Gerador</h1>
		  <form action="processarLogin.jsp" target="_parent">
		    <label for="fname">Usuário</label>
		    <input type="text" id="email" name="email" placeholder="Digite seu email..">
			<div class="senh">
			    <label for="senha">Senha</label>
			    <input type="password" id="senha" name="senha" placeholder="Informe sua senha..">
		  	</div>
		    <input type="submit" value="Entrar">
		  </form>
		  <br>
		  
		</section>
	</div>
	
</body>
</html>