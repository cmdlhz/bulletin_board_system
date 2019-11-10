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
<title>Homepage</title>
</head>
<body>
	<b>Welcome !</b><br><br>
<%
if(user == null){
%>
	<b>Please log in or sign up!</b><br><br>
	<a href="<%=rPath %>/views/user/login"><button>LOG IN (폴더)</button></a>
	<!-- 이건 UserController에 doGet()으로 감-->
	<a href="<%=rPath %>/user/login"><button>LOG IN (/user/login)</button></a>
	<a href="<%=rPath %>/views/user/signup"><button>SIGN UP</button></a>
<%
} else {
%>
	<b><%= user.get("uiNum") %>, <b><%= user.get("uiId") %></b>, <i>please choose one of the following: </i></br><br>
	<a href="<%=rPath %>/board/list"><button>게시판 가기</button></a>
	<a href="<%=rPath %>/user/logout"><button>LOGOUT</button></a>
	<a href="<%=rPath %>/user/list"><button>회원 목록</button></a>
<%
}
%>
</body>
</html>