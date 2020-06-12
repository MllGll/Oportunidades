<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${message_error }
	<form action="salvar" method="post">
		<input type="text" name="username"> <input type="password"
			name="password"> <input type="submit" value="send">
	</form>
</body>
</html>