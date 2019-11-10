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
<title>Sign Up Page</title>
</head>
<body>
<form method="POST" action="/users/signup" onsubmit="return checkForm()">
	<table border="2">
		<tr>
			<td align="center"><b>First Name</b></td>
			<!-- name을 key로 받아감 -->
			<td><input type="text" name="uiName" id="uiName"></td>
		</tr>
		<tr>
			<td align="center"><b>ID</b></td>
			<td><input type="text" name="uiId" id="uiName"></td>
		</tr>
		<tr>
			<td align="center"><b>Password</b></td>
			<td><input type="password" name="uiPwd" id="uiPwd"></td>
		</tr>
		<tr>
			<td><b>Password Check</b></td>
			<td><input type="password" name="uiPwdCheck" id="uiPwdCheck"></td>
		</tr>
		<tr>
			<th colspan="2"><button>SIGN UP</button></th>
		</tr>
	</table>
</form><br>
<a href="<%=rPath %>/views/index"><button>Go Back</button></a>
<script type="text/javascript">
function checkForm(){
	var uiName = document.getElementById("uiName");
	var uiId = document.getElementById("uiId");
	var uiPwd = document.getElementById("uiPwd");
	var uiPwdCheck = document.getElementById("uiPwdCheck");
	
	if(uiName.value.trim().length < 2){
		alert("A name should contain more than 2 characters");
		uiName.value = "";
		uiName.focus();
		return false;
	}
	if(uiId.value.trim().length < 2){
		alert("A name should contain more than 2 characters");
		uiId.value = "";
		uiId.focus();
		return false;
	}
	if(uiPwd.value.trim().length < 5){
		alert("A name should contain more than 2 characters");
		uiPwd.value = "";
		uiPwd.focus();
		return false;
	}
	if(uiPwd.value != uiPwdCheck.value){
		alert("Passwords do NOT match!");
		uiPwdCheck.value = "";
		uiPwdCheck.focus();
		return false;
	}
	return true;
}
</script>
</body>
</html>