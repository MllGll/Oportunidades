<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="br.com.imepac.site.entities.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Listagem</h1>
	${message_success}
	<table>
		<caption></caption>
		<thead></thead>
		<tbody>
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td><input type="checkbox" value="${usuario.id}" name="ids" /></td>
					<td>${usuario.id}</td>
					<td>${usuario.username}</td>
					<td>excluir</td>
					<td>editar</td>
			</c:forEach>
		</tbody>
		<tfoot></tfoot>
	</table>

</body>
</html>