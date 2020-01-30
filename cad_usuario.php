<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>CRUD - Cadastrar</title>		
	</head>
	<link rel="stylesheet" href="style.css">
	<body>
		<a href="cad_usuario.php">Cadastrar</a><br>
		<a href="index.php">Listar</a><br>
		<h1>Cadastrar Usuário</h1>
		<?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
		<form method="POST" action="proc_cad_usuario.php">
			<label>Empresa: </label>
			<input type="text" name="empresa" placeholder="Digite o nome da empresa"><br><br>
			
			<label>E-mail: </label>
			<input type="email" name="email" placeholder="Digite o seu melhor e-mail"><br><br>

			<label>Telefone: </label>
			<input type="text" name="telefone" placeholder="Digite o melhor telefone para contato"><br><br>

			<label>CNPJ: </label>
			<input type="text" name="cnpj" placeholder="Digite o CNPJ da empresa"><br><br>
			
			<label>CEP: </label>
			<input type="text" name="cep" placeholder="Digite o CEP da empresa"><br><br>
			
			<input type="submit" value="Cadastrar">
		</form>
	</body>
</html>