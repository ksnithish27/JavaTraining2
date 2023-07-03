<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="CSS/navigationbar.css" rel="stylesheet" >
<link rel=stylesheet href=contactus.css>
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

<h3>Contact us</h3>
<div class="container">
  <form action="/action_page.php">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name.." required>

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name.." required>

    <label for="country">Country</label>
    <select id="country" name="country">
      <option value="australia">India</option>
      <option value="canada">China</option>
      <option value="usa">Sri Lanka</option>
    </select>

    <label for="Phone">Phone Number</label>
    <input type="text" id="Ph" name="Phone" placeholder="enter your phone number." required>

<label for="email">Email ID</label>
    <input type="text" id="email" name="email" placeholder="enter your email Id." required>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>