<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>RECICLE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/stelyMenu.css">
    <link rel="stylesheet" href="css/stelyIndex.css">

    
</head>
<body>
    <header>
        <div class="imagem-fundo">
            <img src="img/fundo.jpg" alt="">
        </div>
        <br>
        <br>
        <nav>
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                &#9776;
            </label>
            <label class="logo">RECICLE</label>
            <ul>
                <li><a class="active" href="#">Início</a></li>
                <li><a href="#causa">Nossa Causa</a></li>
                <li><a href="#reciclaveis">Reciclaveis</a></li>
                <li class="btn-login"><a href="escolhaLogin.jsp">Login</a></li>
            </ul>
        </nav>
        <section class="conteudo-header">
            <section>
                <p class="line">Venha fazer parte da nossa comunidade.
Aqui sua ação consciente cria um ciclo positivo que gera benefícios para o planeta e para você.</p>
                    <br>
                        <a href="escolhaCadastro.jsp" class="button">CADASTRE-SE!</a>
                    
            </section>
        </section>
    </header>
    
    
    <section id="causa" class="area-index">
        <h1>Nossa Causa</h1>
        <p>O Recicle estimula que cada um faça a sua parte. Torna claro que cada cidadão tem um papel a cumprir. Cada um deve ser responsável pelo lixo que produz e pela separação daquilo que pode vir a ser reciclado.
            Da mesma forma, devemos reconhecer e valorizar o trabalho dos catadores e das cooperativas de reciclagem que tiram seu sustento prestando um serviço ambiental fundamental para nossa cidade.
            É importante sempre lembrar que reciclar, além de ser uma atitude de defesa do meio ambiente, é também uma ação de solidariedade.
            <br>
            Reciclar é agir de forma responsável e o Recicle tem condição de promover uma verdadeira revolução no meio ambiente</p>
    </section>
    <section  id="reciclaveis" class="area-index reciclamos">
        <div><h1>O que reciclamos</h1></div>
        <div>
            <div> <img alt="" src="img/lixoComun.png"> </div><div><img alt="" src="img/lixoOrganico.png"></div>
        </div>
    </section>
    
    <footer>
        <div class="linha">
            <div class="area-footer">
                <h3>Sobre nós</h3>
                <br>
                <ul>
                    <li><a href="#sobre">Sobre</a></li>
                    
                    <li><a href="#projeto">Projeto</a></li>
                    
                    <li><a href="#contato">Contato</a></li>
                </ul>
            </div>
            <div class="area-footer">
                <h3>Cadastro</h3>
                <br>
                <ul>
                    <li><a href="cadastroAfiliado.jsp">Cadastre-se como  Afiliado</a></li>
                    <li><a href="cadastroGerador.jsp">Cadastre-se como Gerador</a></li>
                </ul>
            </div>
            <div class="area-footer social">
                <h3>Rede  Sociais</h3>
                
                <ul>
                    <li><a href="https://www.facebook.com/" target="_blank">Facebook</a></li>
                    
                       <li><a href="https://twitter.com/i/flow/login" target="_blank">Twitter</a></li>
                       
                       <li><a href="https://www.instagram.com/?hl=pt-br" target="_blank">Instagram</a></li>
                       
                       <li><a href="https://www.linkedin.com/" target="_blank">Linkedin</a></li>
                   </ul>
            </div>
        </div>
        <div class="linha">
            <div class="autoral">
                <h6 id="autorais"></h6><p> - RECICLER</p>
            </div>
        </div>
    </footer>
    <script>
        now = new Date
        document.getElementById('autorais').innerHTML=now.getFullYear()
    </script>
</body>
</html>