<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jspf" %>
<%
// ContextPath가 "/"이 아니라 "/bbs"일 경우
String rPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN page</title>
</head>
<body>
<form method="POST" action="/users/login">
	<table border="2">
		<tr>
			<td align="center"><b>ID</b></td>
			<td><input type="text" name="uiId" id="uiId"></td>
		</tr>
		<tr>
			<td align="center"><b>Password</b></td>
			<td><input type="password" name="uiPwd" id="uiPwd"></td>
		</tr>
		<tr>
			<th colspan="2"><button>LOGIN</button></th>
		</tr>
	</table>
</form><br>
<a href="<%=rPath %>/views/index"><button>Go Back</button></a>
</body>
</html>