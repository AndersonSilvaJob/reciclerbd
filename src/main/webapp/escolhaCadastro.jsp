<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>RECICLER</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<style>
		body{
		
		background:linear-gradient(45deg, #3CB371, #228B22, #2E8B57, #008000);
		background-size: 300% 300%;
		animation: colors 15s ease infinite;
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
			text-align:center;
			font-family: 'Lexend Deca', sans-serif;
			
		}
		
		.titulo-main{
			padding-top:10em;
			font-size:16pt;
		}
		.titulo-main a{
			text-decoration:none;
			color:#fff;
		}
		
		.escolha-main{
			padding-top:3em;
			display:flex;
			justify-content: center;
			align-items: center;
			text-align:center;
		}
		
		.img-escolha{
		text-align:center;
		font-size:14pt;
		padding:0 20px;
		}
		
		.img-escolha p{
			font-size:20px;
			color:#111;
		}
		.img-escolha img{
		width:20rem;
		}
		.img-escolha img:hover{
			border-radius: 10rem;
			box-shadow: 0 0 2em #555;
		}
	</style>
	
</head>
<body>
	<main>
		<div class="titulo-main"><a href="index.jsp"><h1>RECICLER</h1></a></div>
		<div class="escolha-main">
			<div class="img-escolha">
			<a href="cadastroAfiliado.jsp"><img alt="Afiliado" src="img/icons_Afiliado.svg"></a> 
			<p>Cadastre-se para ser um Afiliado!</p>
			</div>
			<div class="img-escolha">
			<a href="cadastroGerador.jsp"><img alt="Gerador" src="img/icons_gerador.svg"></a>
			<p>Cadastre-se para ser um Gerador!</p>
			</div>
		</div>
	</main>
</body>
</html>