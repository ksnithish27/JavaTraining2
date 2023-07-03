<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<marquee>
You are welcomed to Practice1.jsp
</marquee>
<%
String name = request.getParameter("uname");
if(name.equals(rev(name))){
	out.println(name+" is a Palindrome");
}
else{
	out.println(name+" is not a Palindrome");
}
%>
</br>


<%! String rev(String name){
	String str="";
	for(int i = 0;i<name.length();i++){
		str=name.charAt(i)+str;
	}
	return str;
}
	%>

	

Current Time:
<%=java.util.Calendar.getInstance().getTime() %>
<br>
<% out.print("Today is "+java.util.Calendar.getInstance().getTime()); %>

<%!int data=50; %>
<%= "value of the variable is: "+data %>

<%! 
int cube(int n){
	return n*n*n;
}
%>






<%= "Cube of 3 is: "+cube(3) %>



</form>
</body>
</html>





