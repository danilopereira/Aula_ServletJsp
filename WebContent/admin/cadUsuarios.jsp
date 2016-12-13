<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Usuários</title>
</head>
<body>
	<h1>Cadastro de Usuários</h1>
	<form action="cadUsuarios" method="post">
		Nome:<br /> <input type="text" name="nome" size="20"><br />
		Senha:<br /> <input type="password" name="senha" size="20"><br />
		Nivel:<br />
		<select name="nivel">
			<option value="1">Adiministrador</option>
			<option value="2">Cliente</option>
		</select>
		<input type="submit" value="Enviar">
	</form>
	${mensagem}
</body>
</html>