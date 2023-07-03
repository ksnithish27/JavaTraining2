<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
#myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 1%;
  height: 30px;
  background-color: #04AA6D;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="navigationbar.css">
</head>

<body bgcolor=red>
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
<h1>JS-1</h1>


<h1>JavaScript Progress Bar</h1>

<div>
<br>
Current Time : 
<%=java.util.Calendar.getInstance().getTime() %>
</div>

<div id="myProgress">
  <div id="myBar"></div>
</div>

<br>
<button onclick="move()">Click Me</button> 

<script>
var i = 0;
function move() {
  if (i == 0) {
    i = 1;
    var elem = document.getElementById("myBar");
    var width = 1;
    var id = setInterval(frame, 10);
    function frame() {
      if (width >= 100) {
        clearInterval(id);
        i = 0;
      } else {
        width++;
        elem.style.width = width + "%";
      }
    }
  }
}
</script>
</body>
</html>