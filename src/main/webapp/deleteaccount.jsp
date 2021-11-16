<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<title>Delete Account</title>
		<link rel="stylesheet" type = "text/css" href="CSS/formstyles.css" >

	<link rel="stylesheet" type = "text/css" href="CSS/insertCus.css" >
</head>
<body>
		
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
		
	<div class  = "form-bg">
		
		
		<form class="form-box" action = "deleteAccount" method = "post">
		
			<h1>Delete Account</h1>
			
			<h3>Customer ID </h3>
			 <input class="text-fild" type = "text" name = "cid" value = "<%= cid %>" readonly> <br>
			<h3>First Name </h3> 
			 <input class="text-fild"  type = "text" name = "fname" value = "<%= fname %>" readonly> <br>
			<h3>Last Name </h3> 
			 <input class="text-fild" type = "text" name = "lname" value = "<%= lname %>" readonly> <br>
			<h3>Phone Number</h3> 
			 <input class="text-fild"  type = "text" name = "phone" value = "<%= phone %>" readonly> <br>
			<h3>Email </h3> 
			 <input class="text-fild" type = "email" name = "email" value = "<%= email  %>" readonly> <br>
			<h3>Password </h3> 
			 <input class="text-fild" type = "password" name = "password" value = "<%= password %>" readonly> <br>
			<h3>Scode  </h3>   
			 <input class="text-fild" type = "password" name = "scode" value = "<%= scode %>" readonly> <br>
			
			
			<input class = "but" type = "submit" name = "submit" value = "Confirm" > <br> <br>
		</form>
	
	</div>

   <br>

</body>
</html>