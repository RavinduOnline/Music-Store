<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>User Account</title>
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
		<div class = "uprofile">
		
		<h1 class =  "uptitle">User Account</h1>
		
					<!--Profile pic-->
			<img class ="ppic" src="Images/profile.png" alt="Profile pic">
		
		
		
	<centre>
	<table>
				<!--assigned value for table-->
	<c:forEach var = "cus" items="${cusDetails}">
	
		<c:set var ="cid" value = "${cus.cid }"/>
		<c:set var ="fname" value = "${cus.lname }"/>
		<c:set var ="lname" value = "${cus.fname}"/>
		<c:set var ="phone" value = "${cus.phone }"/>
		<c:set var ="email" value = "${cus.email }"/>
		<c:set var ="password" value = "${cus.password }"/>
		<c:set var ="scode" value = "${cus.scode }"/>
	
		
		<tr>
			<td>First Name </td>
			<td>${cus.fname} </td>
		</tr>	
		<tr>
			<td>Last Name</td>
			<td>${cus.lname} </td>
		</tr>
		<tr>
		    <td>Customer ID   </td>
		    <td>${cus.cid} </td>
		</tr>
		<tr>
			<td>Phone Number  </td>
			<td>${cus.phone}</td>
		</tr>
		<tr>
			<td>Email </td>
			<td>${cus.email}</td>
		</tr>
		<tr>
			<td>Scode  </td>
			<td>${cus.scode}</td>
		</tr>
  
    </c:forEach>
    </table>
    </centre>
    			<!--send to update page-->
    <c:url value = "updateAcc.jsp" var = "cusupdate"> 
    		<c:param name = "cid" value = "${cid}"/>
    		<c:param name ="fname" value = "${fname}"/>
    		<c:param name ="lname" value = "${lname}"/>
    		<c:param name ="phone" value = "${phone}"/>
    		<c:param name ="email" value = "${email}"/>
    		<c:param name ="password" value = "${password}"/>
    		<c:param name ="scode" value = "${scode}"/>
    		
    </c:url>
 	<br>
    
    <a href = "${cusupdate}">
    <input class = "pbut"  type = "button" name = "update" value = "Edit Details">
    </a> 
      <!--Send to Delete page-->
     <c:url value = "deleteaccount.jsp" var = "cusdelete"> 
    		<c:param name = "cid" value = "${cid}"/>
    		<c:param name ="fname" value = "${fname}"/>
    		<c:param name ="lname" value = "${lname}"/>
    		<c:param name ="phone" value = "${phone}"/>
    		<c:param name ="email" value = "${email}"/>
    		<c:param name ="password" value = "${password}"/>
    		<c:param name ="scode" value = "${scode}"/>
    </c:url>
    
    <a href = "${cusdelete}">
    <input class = "pbut"  type = "button" name = "delete" value = "Delete Account">
    </a>
    
    <a href = "index.jsp">
    <input class = "pbut"  type = "button" name = "home" value = "Back to home">
    </a>
    </div>
    <br><br>


</body>
</html>