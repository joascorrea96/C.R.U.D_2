<?php
session_start();
include_once("conexao.php");
$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$result_usuario = "SELECT * FROM usuarios WHERE id = '$id'";
$resultado_usuario = mysqli_query($conn, $result_usuario);
$row_usuario = mysqli_fetch_assoc($resultado_usuario);
?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>CRUD - Editar</title>		
	</head>
	<body>
		<a href="cad_usuario.php">Cadastrar</a><br>
		<a href="index.php">Listar</a><br>
		<h1>Editar Usuário</h1>
		<?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
		<form method="POST" action="proc_edit_usuario.php">
			<input type="hidden" name="id" value="<?php echo $row_usuario['id']; ?>">
			
			<label>Empresa: </label>
			<input type="text" name="empresa" placeholder="Digite o nome da empresa" value="<?php echo $row_usuario['empresa']; ?>"><br><br>
			
			<label>E-mail: </label>
			<input type="email" name="email" placeholder="Digite o melhor e-mail" value="<?php echo $row_usuario['email']; ?>"><br><br>

			<label>Telefone: </label>
			<input type="text" name="telefone" placeholder="Digite o melhor telefone para contato" value="<?php echo $row_usuario['telefone']; ?>"><br><br>

			<label>CNPJ: </label>
			<input type="text" name="cnpj" placeholder="Digite o CNPJ da empresa" value="<?php echo $row_usuario['cnpj']; ?>"><br><br>

			<label>CEP: </label>
			<input type="text" name="cep" placeholder="Digite o CEP da empresa" value="<?php echo $row_usuario['cep']; ?>"><br><br>
			
			<input type="submit" value="Editar">
		</form>
	</body>
</html>