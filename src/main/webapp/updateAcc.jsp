<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Update Account</title>
	<link rel="stylesheet" type = "text/css" href="CSS/formstyles.css" >

</head>
<body>

		<!--Run JSP-->
	<% 
		String cid = request.getParameter("cid");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String scode = request.getParameter("scode");
	%>

	<header class="header">
			<br>
			<img src="Images/logo.png" class = "logo">
			<h3 class = "logotext" ><b>Heart of Perfect Music</b></h3>
			<br>
	</header>
		<!--Navigation Menu-->
				
		<!--Navigation bar-->
			<ul class="navi">
				<li class="navi"><a href="index.jsp">Home</a></li>
				<li class="navi"><a href="login.jsp">Login</a></li>
				<li class="navi"><a href="customerinsert.jsp">Register</a></li>
				
			</ul>

		<br> 
		
		<!--Update form start-->
		
	<div class  = "form-bg">

		<form class="form-box" action = "AccountUpdate" method = "post">
			<h1>Update Account</h1> <br>
		
			<h3> Customer ID </h3>
			 <input class="text-fild" type = "text" name = "cid" value = "<%= cid %>" readonly> <br>
			<h3> First Name </h3>
			 <input class="text-fild" type = "text" name = "fname" value = "<%= fname %>" > <br>
			<h3>Last Name </h3>
			 <input class="text-fild" type = "text" name = "lname" value = "<%= lname %>" > <br>
			<h3>Phone Number </h3>
			 <input class="text-fild" type = "text" name = "phone" value = "<%= phone %>" > <br>
			<h3>Email </h3>
			 <input class="text-fild" type = "email" name = "email" value = "<%= email  %>" > <br>
			<h3>Password </h3>
			 <input class="text-fild" type = "password" name = "password" value = "<%= password %>" > <br>
			<h3>Scode  </h3>
			 <input class="text-fild" type = "password" name = "scode" value = "<%= scode %>" >
			 <p class = "ptag">*Scode must contain only five digits<p> <br>
			
			<input class = "but" type = "submit" name = "submit" value = "Update" > <br><br>
		</form>
	</div>


</body>
</html>