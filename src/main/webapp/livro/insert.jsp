<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!--informando ao navegador que ele vai ler uma uma pagina java contendo um text/html e vai receber caracteres especiais do tipo UTF-8-->

<!DOCTYPE html><!--informando ao navegador que ele ira "ler um documento hmtl-->

<html><!--iniciando a estrutura do navegador-->
    <head><!--iniciando a estrutura do cabeçario-->
        <meta charset="utf-8" /><!--Especificando a codificação de caracteres para o documento -->
        <title>Novo Livro</title><!--definindo o titudo da pagina -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"><!--dizendo que a estilização em css sera feita pelo bootstrap -->

    </head><!--finalizando a estrutura do cabeçario-->
    <body>
       <h1>Novo Livro</h1>
           <hr>
           <form action="insert" method="post">
               <label for="titulo">titulo</label>
               <input type="text" name="titulo"/>
               <a href="/livro/list" class="btn btn-secondary">Voltar</a>
               <input type="submit" value="Salvar" class="btn btn-warning"/>
           </form>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    </body>
</html>