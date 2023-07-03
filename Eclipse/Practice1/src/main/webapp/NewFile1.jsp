<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%! int day =3; %>>
</head>
<body>
<% if(day==1 || day ==7){ %>
<p>Today is weekend</p>
<%}else { %>
<p> Today is not weekend</p>
<%} %>
</body>
</html>