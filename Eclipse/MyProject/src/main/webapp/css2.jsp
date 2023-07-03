<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="navigationbar.css">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* Full height */
  height: 50%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Images used */
.img1 { background-image: url("n2.jpg"); }
.img2 { background-image: url("nature.jpg"); }
.img3 { background-image: url("unnamed.jpg"); }

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  font-size: 80px;
  border: 10px solid #f1f1f1;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 300px;
  padding: 20px;
  text-align: center;
}
</style>
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

<h1>CSS-2</h1>

<div>
<br>
Current Time : 
<%=java.util.Calendar.getInstance().getTime() %>
</div>

<div class="bg-image img1"></div>
<div class="bg-image img2"></div>
<div class="bg-image img3"></div>

<div class="bg-text">Nature</div>
</body>
</body>
</html>