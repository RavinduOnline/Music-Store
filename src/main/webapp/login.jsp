<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Login</title>
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
	
	<!--login form start-->
	
	<div class  = "form-bg"> 
									<!--call savelet calss-->
	<form class="form-box" action="login" method="post">
	
        <h2 class="form-title">Customer Login</h2>
        
        <input class="text-fild"  type="email"  placeholder="Enter Email" name="username" required>
		<br><br>
        <input  class="text-fild" type="password"  placeholder="Enter Password" name="password" required>

        <br><br>
     
     	<input class = "but" type = "submit" name = "submit" value = "login" >
     	
     	<br><br>

    </form>
    
    </div>
    
    <br><br><br><br><br><br><br><br><br><br><br>
    
</body>
</html>