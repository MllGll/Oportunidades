<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<title>Editar Perfil</title>
		<link rel="stylesheet" href="style.css">
		
	</head>
	<body>
		<h1>Editar Perfil</h1>
		
		<div class="principal">
		<h3>Informa��es de Conta (obrigat�rio)</h3>
		<label>Nome completo</label><br>
		<input type="text" value=""><br>
		<label>Email</label><br>
		<input type="text" value=""><br>
		<label>Senha</label><br>
		<input type="text" value=""><br>
		
		<h3>Informa��es Adicionais (opcional)</h3>
		<label>Descri��o do perfil</label><br>
		<input type="text"><br>
		
		<label>CEP</label><br>
		<input type="text"><br>
		<label>UF</label><br>
		<input type="text"><br>
		<label>Cidade</label><br>
		<input type="text"><br>
		<label>Logradouro</label><br>
		<input type="text"><br>
		<label>N�mero</label><br>
		<input type="text"><br>
		<label>Complemento</label><br>
		<input type="text"><br>
		<label>Bairro</label><br>
		<input type="text"><br>
		
		<label>N�mero de Telefone</label><br>
		<input type="text"><br><br>
		
		<input type="submit" value="Salvar">
		</div>
		
		<a href="index.jsp">Cancelar</a>
	</body>
</html>