<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite; /* Safari */
  animation: spin 2s linear infinite;
}

/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
<link rel="stylesheet" href="navigationbar.css">
</head>
<body>
<div class = "navbar">
 <a href = "home.jsp">Home</a>
<div class = "dropdown">
 <button class ="dropbtn">Frame</button>
<div class= "dropdown-content">
<a href = "horizontalframe.jsp">Horizontal</a>
<a href = "verticalframe.jsp">Vertical</a>
<a href = "mixedframe.jsp">Mixed</a>
</div></div>

<div class = "dropdown">
<button class ="dropbtn">Table</button>
<div class= "dropdown-content">
<a href = "simpletable.jsp">Simple</a>
<a href = "complextable.jsp">Complex</a>
<a href = "customizedtable.jsp">Customized</a>
</div></div>

<div class = "dropdown">
<button class ="dropbtn">List</button>
<div class= "dropdown-content">
<a href = "ordered.jsp">Ordered List</a>
<a href = "unordered.jsp">Unordered List</a>
<a href = "definition.jsp">Definition List</a>
</div></div>

<div class = "dropdown">
<button class ="dropbtn">CSS</button>
<div class= "dropdown-content">
<a href = "css1.jsp">CSS-1</a>
<a href = "css2.jsp">CSS-2</a>
<a href = "css3.jsp">CSS-3</a>
</div></div>

<div class = "dropdown">
<button class ="dropbtn">Java Script</button>
<div class= "dropdown-content">
<a href = "js1.jsp">JS-1</a>
<a href = "js2.jsp">JS-2</a>
<a href = "js3.jsp">JS-3</a>
</div></div>

<div class= "login">
<a href = "login.jsp">Login</a>
</div>

</div>

<h1>CSS-3</h1>

<div>
<br>
Current Time : 
<%=java.util.Calendar.getInstance().getTime() %>
</div>


<h2>How To Create A Loader</h2>

<div class="loader"></div>
</body>
</html>