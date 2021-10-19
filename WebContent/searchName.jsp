<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("value");
	String[] names = request.getParameterValues("value");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><%=name %></h1>
<h1><%=names[0]+"/"+names[1]+"/"+names[2] %></h1>
</body>
</html>