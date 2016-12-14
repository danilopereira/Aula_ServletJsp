<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detalhes do Livro</title>
</head>
<body>
	<h1>Detalhes do  Livro</h1>
	<ul>
		<li>Codigo: ${livro.codigo}</li>
		<li>Titulo: ${livro.titulo}</li>
		<li>Autor: ${livro.autor}</li>
	</ul>
	<img alt="${livro.titulo}" src="imagem?id=${livro.codigo}">
</body>
</html>