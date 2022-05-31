<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deixe suas duvidas e ideias!</title>
</head>
<style>
	input[type=text]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=email]{
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
  background-color: #005c45ff;
  color: white;
  padding: 14px 20px;
  margin: 35px 0 0 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
  font-size: 18px;
}

input[type=submit]:hover {
  background-color: #45a049;
}

#msg{
	width: 100%;
  	height: 22vh;
}

section {
  height:100%;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

h2{
	color:#464B4C;
}

p{
	color:#464B4C;
	font-size: 20px;
}
</style>
<body>
	<section>
		<h2>O que você quer Saber?</h2>
		<p>Deixe suas duvidas para que tiremos ou suas ideias<br>
		para que possamos juntos cuidar do nosso planeta!
		</p>
		
		<form action="#" method="post">
		    <div>
		        
		        <input type="text" id="nome" name="nome" placeholder="NOME">
		    </div>
		    <div>
		        
		        <input type="email" id="email" name="email" placeholder="EMAIL">
		    </div>
		    <div>
		        
		        <textarea id="msg" placeholder="Digite sua mensagem aqui..."></textarea>
		    </div>
		    <input type="submit" onclick="return validar()" value="Envia">
		</form>
	</section>
	
	<script>
		function valida(){
		
			if(document.getElementById('nome').value ==''){
				alert('Preencha seu nome!');
				documente.getElementById('nome').focus();]
				return false;
			}
			
			return true;
		}
		
	</script>
</body>
</html>