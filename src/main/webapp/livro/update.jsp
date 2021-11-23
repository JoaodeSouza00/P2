<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!--informando ao navegador que ele vai ler uma uma pagina java contendo um text/html e vai receber caracteres especiais do tipo UTF-8-->

<!DOCTYPE html><!--informando ao navegador que ele ira "ler um documento hmtl-->
<html><!--iniciando a estrutura do navegador-->
    <head><!--iniciando a estrutura do cabeçario-->
        <meta charset="utf-8" /><!--Especificando a codificação de caracteres para o documento -->
        <title>Editar Livro</title><!--definindo o titudo da pagina -->
    </head><!--finalizando a estrutura do cabeçario-->
    <body><!--iniciando a estrutura do corpo-->
       <h1>Editar Livro</h1><!--definindo um titulo da pagina-->
           <hr><!--inserindo uma linha horizontal-->
           <form action= "/livro/update" method="post"><!--criando formulario de ação post e enviando dados para  /livro/update-->
            <input type="hidden" name="id" value="${livro.id}"/><!--criando um input para criar uma senha -->
               <label for="titulo">titulo</label><!--crianado um rotulo para titulo -->

               <input type="text" name="titulo" value="${livro.titulo}"/><!--criando um input para adicionar um texto -->
               <a href="/livro/list">Voltar</a><!--criando um link para /livro/list-->
               <input type="submit" value="Salvar"/><!--criando um input para enviar dados do formulario -->
           </form><!--fechando a tag formulario-->

        
    </body><!--finalizando a estrutura do corpo-->
</html><!--finalizando a estrutura do navegador-->