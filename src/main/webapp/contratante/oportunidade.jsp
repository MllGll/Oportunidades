<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<title>Cadastrar Oportunidade</title>
		<link rel="stylesheet" href="../style.css">
		
	</head>
	<body>
		<h1>Cadastrar Oportunidade</h1>
		
		<form action="/scripts/conta/cadastrar" method="post">
			<div class="principal">
			
			<label>Nome da oportunidade (opicional)</label><br> 
			<input type="text" name="nome" value=""><br>
			<form:errors path="contaForm.nome"/>
			
			<label>Função a ser exercida</label><br>
			<input type="text" name="funcao" value=""><br>
			<form:errors path="contaForm.funcao"/>
			
			<label>Nome do Local ou Logradouro</label><br>
			<input type="text" name="local" value=""><br>
			<form:errors path="contaForm.local"/>
			
			<label>Data (opcional)</label><br>
			<input type="text" name="data"><br>
			
			<label>Remuneração</label><br>
			<input type="text" name="remuneracao"><br><br>
			<form:errors path="contaForm.remuneracao"/>
			<p>${message_error}</p>
		
			<input type="submit" value="Gerar">
			</div>
		</form>
		
		<input type="submit" value="Cancelar">
	</body>
</html>