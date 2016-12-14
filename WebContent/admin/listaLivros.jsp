<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Livros</title>
</head>
<body>
	<h1>Lista de Livros</h1>
	<jsp:useBean id="livro" class="br.com.fiap.bean.LivrosBean"/>
	<table border="1">
		<tr>
			<th>Código</th>
			<th>Título</th>
			<th colspan="2">Opções</th>
		</tr>
		<c:forEach var="book" items="${livro.listaLivros}">
			<tr>
				<td>${book.codigo}</td>
				<td>${book.titulo}</td>
				<td><a href="consultarLivro?codigo=${book.codigo}">Detalhes</a></td>
				<td><a href="verSinopse?codigo=${book.codigo}">Sinopse</a></td>
			</tr>	
		</c:forEach>
	</table>
</body>
</html>