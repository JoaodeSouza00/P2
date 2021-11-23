<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!--informando ao navegador que ele vai ler uma uma pagina java contendo um text/html e vai receber caracteres especiais do tipo UTF-8-->

<!DOCTYPE html><!--informando ao navegador que ele ira "ler um documento hmtl-->

<html><!--iniciando a estrutura do navegador-->
    <head><!--iniciando a estrutura do cabeçario-->
        <meta charset="utf-8" /><!--Especificando a codificação de caracteres para o documento -->
        <title>Novo Livro</title><!--definindo o titudo da pagina -->
    </head><!--finalizando a estrutura do cabeçario-->

    <body><!--iniciando a estrutura do corpo-->
       <h1>Novo Livro/h1><!--definindo um titulo da pagina-->
           <hr><!--inserindo uma linha horizontal-->

           <form action="insert" method="post"><!--criando formulario de ação post e enviando dados para  insert-->
               <label for="titulo">titulo</label><!--crianado um rotulo para titulo -->
               <input type="text" name="titulo"/><!--criando um input para salvar o nome do livro-->
               <a href="/livro/list">Voltar</a><!--criando um link para /livro/list -->
               <input type="submit" value="Salvar"><!--criando um input para salvar -->
           </form><!--fechando a tag formulario-->

        <h1>Lista de livros. do joao</h1><!--definindo um titulo da pagina-->
    </body><!--finalizando a estrutura do corpo-->
</html><!--finalizando a estrutura do navegador-->

