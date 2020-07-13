<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<title>Cadastrar Oportunidade</title>
		<link rel="stylesheet" href="/../style.css">
		
	</head>
	<body>
		<h1>Cadastrar Oportunidade</h1>
		
		<div class="principal">
			<form action="/scripts/oportunidade/cadastrar" method="post">
			
				<label>Nome da oportunidade </label><form:errors path="oprtForm.nome" style="color: red"/><br> 
				<input type="text" name="nome"><br>
			
				<label>Função a ser exercida </label><form:errors path="oprtForm.funcao" style="color: red"/><br>
				<input type="text" name="funcao"><br>
			
				<label>Nome do Local ou Logradouro </label><form:errors path="oprtForm.local" style="color: red"/><br>
				<input type="text" name="local"><br>
			
				<label>Data (opcional)</label><br>
				<input type="text" name="data"><br>
			
				<label>Remuneração </label><form:errors path="oprtForm.remuneracao" style="color: red"/><br>
				<input type="text" name="remuneracao"><br><br>
		
				<input type="submit" value="Gerar" style="margin-bottom:0">
			
			</form>
			
			<form action="/scripts/oportunidade/cancelar">
				<input type="submit" value="Cancelar" style="margin-top:0">
			</form>
		
		</div>
	</body>
</html>