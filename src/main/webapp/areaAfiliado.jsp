<%@page import="classes.Afiliado"%>
<%@page import="classes.Endereco"%>
<%@page import="classes.EnderecoDAO"%>
<%@page import="classes.AfiliadoDAO"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/stylePainel.css">
    <title>RECICLER - Afiliado</title>

</head>
<body>
<%
String id=request.getParameter("id");
try {
	
	AfiliadoDAO dados = new AfiliadoDAO();
	Afiliado afiliado = dados.pegarAfiliado(Integer.parseInt(id));


%>
    <main>
        <nav id="menuOculto" class="menu">
                <p class="btnFechar" onclick="fecharNav()">&times;</p>
                <section><h2><%=afiliado.getNome()%></h2> 
                <a href="meusdadosAfiliado.jsp?id=<%out.print(id);%>" target="main">Meu dados</a>
                <a href="cadastralixo.jsp?id=<%out.print(id);%>" target="main">Cadastro de coleta</a>
                <a href="ecoestacoes.jsp" target="main">Eco Estações</a>
                <a href="treinamentos.jsp" target="main">Videoteca</a>
                <a href="faleconoscoAfiliado.jsp?id=<%out.print(id);%>" target="main">Fale Conosco</a>
                <a href="alterarSenha.jsp?id=<%out.print(id);%>" target="main">Alterar Senha</a></section> 
                <a href="index.jsp">Sair</a></section> 
        </nav>
        <div id="principal"  class="conteudo">
            <span class="menu-mobile" style="font-size: 40px;cursor: pointer;" onclick="abrirNav()">&#9776;</span>

                <div class="incor-conteudo">
                    <iframe src="meusdadosAfiliado.jsp?id=<%out.print(id);%>" name="main" id="meusdados"></iframe>
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