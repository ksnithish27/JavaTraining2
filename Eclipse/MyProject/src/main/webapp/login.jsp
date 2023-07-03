<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<div>
<br>
Current Time : 
<%=java.util.Calendar.getInstance().getTime() %>
</div>

<form id = "form">


<div class="formr-control ">
<label>Sign in</label>
</div>

<div formr-control>
<label>to continue to E-mail</label>
</div>

<div class ="form-control">
<label for="email" id = "email/phone">
</label>
<input type ="text" id="email" placeholder = "email or phone">
</div>

<div class ="form-control">
<label><a href = "#Forgot_e-mail">Forgot email?</a></label>
</div>

<div class ="form-control">
<label>Not your computer ? Use Guest  mode to sign in privately.</label>
<a href = "#Learnmore">Learn more</a>
<br>
<br>
<a href = "createaccount.html">Create account</a>

<a href ="#button"><input type = "button" name="submit" value = "Next"></input></a>
</div>
</form>

<ul>


<table align="center">
<tr>
<td><div>
<li><select name = "language">
<option value = "English">English(United states)&nbsp&nbsp&nbsp&nbsp</option>
<option value = "Tamil">Tamil</option>
<option value = "Telugu">Telugu</option>
<option value = "Other">Other</option>
</li>
</select></div></td>
<div class = "lia">
<td><li><a href = "help.html">Help</a></li></td>
<td><li><a href = "terms.html">Terms</a></li></td>
<td><li><a href = "privacy.html">Privacy</a></li></td>
</div>

</table>
</ul>

</body>
</html>