<%-- 
    Document   : Pontodecoletajsp
    Created on : 15/09/2021, 21:57:03
    Author     : ander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Pontos de Coleta</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid" style="background-color:#005c45ff;">
  <h1 style="color:#fff;">Pontos de Coletas</h1>
  <div class="row">
    <div class="col-sm-3" style="background-color:lavender;">
     <div class="form-group">
     <label for="sel1">Digite seu endereço ou Cep:</label>
      <input type="text" class="form-control form-control-lg" placeholder="Ex: Rua Recicler, 555 ou 55555-000" name="text3">
      <label for="sel1">Selecione qual item você quer descartar.</label>
    </div>
    <div class="form-check">
  <label class="form-check-label">
      <input type="checkbox" class="form-check-input" id="todos" name="fav_language" value="todos" checked>Todos
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="oleocozinha" name="fav_language" value="oleocozinha">Óleo de Cozinha 
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="eletronicos" name="fav_language" value="eletronicos">Eletrônicos 
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="eletrodomesticos" name="fav_language" value="eletrodomesticos">Eletrodomésticos
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="entulhos" name="fav_language" value="entulhos">Entulhos
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="isopor" name="fav_language" value="isopor">Isopor
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="lampadas" name="fav_language" value="lampadas">Lâmpadas
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="moveis" name="fav_language" value="moveis">Móveis
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="metal" name="fav_language" value="metal">Metal
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="papelepapelao" name="fav_language" value="papelepapelao">Papel e Papelão
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="pilha" name="fav_language" value="pilha">Pilha
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="plastico" name="fav_language" value="plastico">Plástico
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="podadeplantas" name="fav_language" value="podadeplantas">Poda de plantas
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="raiox" name="fav_language" value="raiox">Raio-X
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="remedio" name="fav_language"  value="remedio">Rémedios
  </label>
</div>
<div class="form-check">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" id="vidro" name="fav_language" value="vidro" >Vidro
  </label>
</div>
        <button type="button"  class="btn btn-success btn-block">Pesquisar</button>
    </div>
    <div class="col-sm-9" style="background-color:lavenderblush;">
 
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3951.2151314904927!2d-34.92195468536738!3d-7.976703494254995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab171257308b73%3A0x6e69d5369e091f90!2sEstrada%20do%20Passarinho%2C%203455%20-%20Passarinho%2C%20Recife%20-%20PE%2C%2053170-110!5e0!3m2!1spt-BR!2sbr!4v1631844246611!5m2!1spt-BR!2sbr" width="100%" height="470" style="border:0;" allowfullscreen="" loading="lazy"></iframe> </iframe>

    </div>
  </div>
</div>
    
</body>
</html>
