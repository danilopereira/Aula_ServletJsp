<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Livros</title>
</head>
<body>
	<h1>Cadastro de Livros</h1>
	<form action="cadLivros" method="post" enctype="multipart/form-data">
		Código:<br/>
		<input type="text" name="codigo" size="10">
		Titulo:<br/>
		<input type="text" name="titulo" size="30">
		Autor:<br/>
		<input type="text" name="autor" size="30">
		Data de Puplicação:<br/>
		<input type="text" name="dataPublicacao" size="20">
		Preço:<br/>
		<input type="text" name="preco" size="10">
		Foto:<br/>
		<input type="file" name="foto">
		
		<input type="submit" value="Incluir">
		${msg}
	</form>
</body>
</html>