<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户管理</title>
</head>
<body>
	<h2>用户管理</h2>
	<a href="${contextPath}/user/addUser">新增用户</a>
	<table border="1">
		<thead>
		<tr>
			<td>ID</td>
			<td>用户名</td>
			<td>描述</td>
			<td>所属单位</td>
			<td>权限</td>

		</tr>
		</thead>
		<tbody>
		<c:forEach var="user" items="${userList}">	
			<tr>
				<td>${user.id}</td>
				<td>${user.username}</td>
				<td>${user.description}</td>
				<td>
					<c:choose> 
					<c:when test="${empty user.orgUnit}">
						
					</c:when>
					<c:otherwise>
						${user.orgUnit.name}
					</c:otherwise>
					</c:choose>
				</td>
				<td>${user.privilege}</td>
				<td><form action="${contextPath}/user/delete/${user.id}" method="POST"><input type="submit" value="删除"></input></form></td>
				<td><form action="${contextPath}/user/editUser/${user.id}" method="POST"><input type="submit" value="编辑"></input></form></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</body>
</html>