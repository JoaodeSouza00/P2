<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!--informando ao navegador que ele vai ler uma uma pagina java contendo um text/html e vai receber caracteres especiais do tipo UTF-8-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!--chamando a biblioteca core do jsp-->
<!DOCTYPE html><!--informando ao navegador que ele ira "ler um documento hmtl-->
<html><!--iniciando a estrutura do navegador-->
    <head><!--iniciando a estrutura do cabeçario-->
        <meta charset="utf-8" /><!--Especificando a codificação de caracteres para o documento -->
        <title>Livros</title><!--definindo o titudo da pagina -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"><!--dizendo que a estilização em css sera feita pelo bootstrap -->

    </head><!--finalizando a estrutura do cabeçario-->
    <body><!--iniciando a estrutura do corpo-->
        <main class="container"><!--tag do corpo principal da pagina-->
            <h1>Livros</h1><!--definindo um titulo da pagina-->
            <a href="/livro/insert" class="btn btn-primary">Novo livro</a><!--criando um link para /livro/insert -->
        <table><!--criando uma tabela-->
            <tr><!--criando uma linha na tabela-->
                <th>ID</th><!--criando uma cedula do tipo headers na linha da tabela-->
                <th>Título</th><!--criando uma cedula do tipo headers na linha da tabela-->
            </tr><!--fechando uma linha na tabela-->
            <c:forEach var="l" items="${livros}"><!--criando uma linha na tabela-->
                <tr><!--criando uma linha na tabela-->
                    <td>${l.id}</td><!--criando uma cedula da tabela-->
                    <td>${l.titulo}</td><!--criando uma cedula da tabela-->
                    <td><!--criando uma cedula da tabela-->
                        <a href="/livro/update/${l.id}" class="btn btn-primary">Atualizar livro</a><!--criando um link para atualizar-->
                    </td><!--fechando uma cedula da tabela-->
                    <td> <a href="/livro/delete/${l.id}" class="btn btn-danger">Deletar livro</a></td><!--criando um link para deletar-->

                </tr><!--fechando uma linha na tabela-->

            </c:forEach>
        </table><!--encerrando a tabela-->

        <h1>Lista de livros do joaozin e do isac</h1><!--definindo um titulo da pagina-->

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script><!--fazendo uma chamada ao javaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script><!--fazendo uma chamada ao bootstrap -->
    </main><!--encerrando o corpo principal-->
</body><!--encerrando o corpo da pasta-->
</html><!--encerrando a pagina-->
