<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%! int fontSize; %>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%for (fontSize =1; fontSize<=5; fontSize++){%>
	<font color ="green" size="<%= fontSize%>">
	JSP Tutorial ar MTICA</font><br/>
<%}%>
</body>
</html>