<%@page import="classes.Usuario"%>
<%@page import="classes.Endereco"%>
<%@page import="classes.UsuarioDAO"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/stylePainel.css">
    <title>RECICLER - Gerador</title>

</head>
<body>
<%
String id=request.getParameter("id");
try {
	
	UsuarioDAO Usuario = new UsuarioDAO();
	Usuario usuario = Usuario.getUsuario(Integer.parseInt(id));


%>
        <main>
        <nav id="menuOculto" class="menu">
                <p class="btnFechar" onclick="fecharNav()">&times;</p>
                <section><h2><%=usuario.getNome()%></h2> 
                <a href="meusdados.jsp?id=<%out.print(id);%>" target="main">Meus dados</a>
                <!-- 
                <a href="#" target="main">Meus Pontos</a>
                <a href="#" target="main">Meus Resgastes</a>
                -->
                <a href="pontoColeta.jsp" target="main">Pontos de Coleta</a>
                <a href="ecoestacoes.jsp" target="main">Eco Estações</a>
                <a href="treinamentos.jsp" target="main">Videoteca</a>
                <a href="faleconosco.jsp?id=<%out.print(id);%>" target="main">Fale Conosco</a>
                <a href="alterarSenha.jsp?id=<%out.print(id);%>" target="main">Alterar Senha</a>
                <a href="index.jsp">Sair</a></section> 
        </nav>
        <div id="principal"  class="conteudo">
            <span class="menu-mobile" style="font-size: 30px;cursor: pointer;" onclick="abrirNav()">&#9776;</span>

                <div class="incor-conteudo">
                    <!-- <iframe src="meusdados.jsp?id=<%//out.print(id);%>" name="main" id="meusdados"></iframe> -->       
			<iframe src="meusdados.jsp?id=<%out.print(id);%>" name="main" texto="description" id="meusdados" class="meusdados"></iframe>
                   </div>
        </div>

    </main>
    <script src="script/painelUsuario.js"></script>
    <%
} catch (Exception e) {
	out.println(e.getMessage());
	}
%>
</body>
</html>