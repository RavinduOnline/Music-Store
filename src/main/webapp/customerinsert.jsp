<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Create Account</title>
	<link rel="stylesheet" type = "text/css" href="CSS/formstyles.css" >
</head>
<body>


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
		<form class="form-box" action="CreateAccount" method="post">
		
       		 <h2 class="form-title">Create Account</h2>
        
       		 <input  class="text-fild" type="text"  placeholder="Enter First Name" name="fname" required>
					
			<input class="text-fild" type="text"  placeholder="Enter Last Name" name="lname" required>
				
			<input class="text-fild" type="text"  placeholder="Enter Mobile Number" name="phone" required>
					
       		 <input class="text-fild"  type="email"  placeholder="Enter Email" name="username" required>
					
        	<input class="text-fild" type="password"  placeholder="Enter Password" name="password" required>
					
			<input class="text-fild" type="text"  placeholder="Enter Scode" name="scode" required>
			
			<p class = "ptag">*Scode must contain only five digits<p>
					
     	<input class = "but" type = "submit" name = "submit" value = "Create Account" >
     	<br>

    </form> 
    
   </div>

</body>
</body>
</html>