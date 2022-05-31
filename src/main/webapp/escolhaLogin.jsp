<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RECICLER - Escolha Login</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
<style>

*{
	margin:0;
	padding:0;
}
body{
	display: flex;
	aling-items:center;
	justify-content: center; 
	width:100vw;
	height:100vh;
	background:linear-gradient(45deg, #3CB371, #228B22, #2E8B57, #008000);
	background-size: 300% 300%;
	animation: colors 15s ease infinite;
	font-family:'Ubuntu', sans-serif;
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

main{
	display:flex;
	justify-content: center; 
	padding:15vh 0;
}
main div{
	display:flex;
	flex-direction:row;
	width:60vw;
	height:60vh;
	background:#fff;
  
	box-shadow: 0 0 1em #555;
}
main div .pedaco1{
	display:flex;
	flex-direction:column;
	background:#27674C;
	width:45%;
	height:100%;
	align-items: center;
	justify-content: center; 
	align-content: center;
	
}

main div .pedaco1 h1, h2, a{
	padding:10px;
	color:#fff;
}
main div .pedaco1 a h1{
	font-size:38px;
}
main div .pedaco1 a{
	text-decoration:none;
	font-size:30px;
}
main div .pedaco1 a:hover{
	color:#111;
}
main div .pedaco2{
	background:#fff;
	width:55%;
	height:100%;
}
main div .pedaco2 iframe{
	width:95%;
	padding:0 20px;
	border:none;
	height:100%;
}
@media (max-width:840px){
	main div{
	display:block;
	
}
}
</style>
</head>
<body>
	<main>
		<div class="area-div">
			<div class="div-pedaco pedaco1">
				<a href="index.jsp"><h1>RECICLER</h1></a>
				<h2>Escolha como deseja logar?</h2>
				<a href="loginGerador.jsp" target="main">GERADOR</a>
                <a href="loginAfiliado.jsp" target="main">AFILIADO</a>
			</div>
			<div class="div-pedaco pedaco2">
				<iframe src="loginGerador.jsp" name="main" id="loginGerador"></iframe>
			</div>
		</div>
	</main>
</body>
</html>