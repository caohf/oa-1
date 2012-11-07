<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>报审事项管理</title>
</head>
<body>
	<h2>报审事项管理</h2>
	<a href="${contextPath}/">返回主页</a><br>
	<a href="${contextPath}/reportFormMatter/addReportFormMatter">新增报审事项</a>
	<table border="1">
		<thead>
		<tr>
			<td>ID</td>
			<td>名称</td>

		</tr>
		</thead>
		<tbody>
		<c:forEach var="reportFormMatter" items="${reportFormMatterList}">	
			<tr>
				<td>${reportFormMatter.id}</td>
				<td>${reportFormMatter.name}</td>
				<td><form action="${contextPath}/reportFormMatter/delete/${reportFormMatter.id}" method="POST"><input type="submit" value="删除" onclick="return confirm('确认删除');"></input></form></td>
				<td><form action="${contextPath}/reportFormMatter/editReportFormMatter/${reportFormMatter.id}" method="POST"><input type="submit" value="编辑"></input></form></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</body>
</html>