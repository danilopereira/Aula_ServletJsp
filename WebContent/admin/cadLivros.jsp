<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Livros</title>
</head>
<body>
	<h1>Cadastro de Livros</h1>
	<form action="cadLivros" method="post" enctype="multipart/form-data">
		C�digo:<br/>
		<input type="text" name="codigo" size="10"><br/>
		Titulo:<br/>
		<input type="text" name="titulo" size="30"><br/>
		Autor:<br/>
		<input type="text" name="autor" size="30"><br/>
		Data de Puplica��o:<br/>
		<input type="text" name="datapub" size="20"><br/>
		Pre�o:<br/>
		<input type="text" name="preco" size="10"><br/>
		Foto:<br/>
		<input type="file" name="foto"><br/>
		
		<input type="submit" value="Incluir">
		${msg}
	</form>
</body>
</html>