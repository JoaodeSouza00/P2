<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<!DOCTYPE html><!--informando ao navegador que ele ira "ler um documento hmtl-->

<html><!--iniciando a estrutura do navegador-->

    <head><!--iniciando a estrutura do cabeçario-->


        <meta charset="utf-8" /><!--Especificando a codificação de caracteres para o documento -->




        <title>Apagar Livro</title><!--definindo o titudo da pagina -->


     

    </head><!--finalizando a estrutura do cabeçario-->

    <body><!--iniciando a estrutura do corpo-->


        <h1>Apagar Livro</h1><!--definindo um titulo da pagina-->

        <hr><!--inserindo uma quebra de linha-->



        <p>Deseja mesmo excluir o livro<em>"${livro.titulo}"</em>?</p><!--inserindo um paragrafo na pagina-->



        <form action="livro/delete" method="post"><!--enviando dados para  livro/delete-->

            <input type="hidden" name="id"value="${livro.id}"/><!--criando um input id -->



            <a href="/livro/list">Voltar</a><!--criando um link para /livro/list -->

            <input type="submit" value="Excluir"/><!--criando um input para deletar -->

        </form>

        </body><!--finalizando a estrutura do corpo-->

</html><!--finalizando a estrutura do navegador-->