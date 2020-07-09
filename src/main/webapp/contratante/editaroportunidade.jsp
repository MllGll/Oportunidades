<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<title>Editar Oportunidade</title>
		<link rel="stylesheet" href="../style.css">
		
	</head>
	<body>
		<h1>Editar Oportunidade</h1>
		
		<form action="/scripts/oportunidade/atualizar" method="post">
			<div class="principal">
			
			<label>Nome da oportunidade</label><br> 
			<input type="text" name="nome" value=""><br>
			<form:errors path="OprtForm.nome"/>
			
			<label>Função a ser exercida</label><br>
			<input type="text" name="funcao" value=""><br>
			<form:errors path="OprtForm.funcao"/>
			
			<label>Nome do Local ou Logradouro</label><br>
			<input type="text" name="local" value=""><br>
			<form:errors path="OprtForm.local"/>
			
			<label>Data (opcional)</label><br>
			<input type="text" name="data"><br>
			
			<label>Remuneração</label><br>
			<input type="text" name="remuneracao"><br><br>
			<form:errors path="OprtForm.remuneracao"/>
			<p>${message_error}</p>
		
			<input type="submit" value="Salvar">
			</div>
		</form>
		
		<a href="../index.jsp">Cancelar</a>
	</body>
</html>