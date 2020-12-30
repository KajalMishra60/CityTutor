<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../Image/tc1.gif" rel="icon" />
<link href="../css/../admin.css" rel="stylesheet" type="text/css"/>
<style>
#body{
background:red;
}
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}
.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    margin-left:50px;
}
.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: silver;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<img src="../Image/im.png" style="float:left; height:60px; width:200px; "/>
<body><center><h1 style="font-size:40px ; font-family:Corsiva">Welcome To Admin Zone</h1></center>
<div class="navbar">
  <a href="Home.jsp">Home</a>
  <a href="ManageProfile.jsp">Manage Tutor Profile</a>
 <a href="TechPreview.jsp">Tutor's Review</a>
      <a href="StuReview.jsp">Student Review</a>
      <a href="Enquiry.jsp">Enquiry</a>
   <a href="SendEmail.jsp">Send Email</a>
  <div class="dropdown">
    <button class="dropbtn">Setting 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="ChangePass.jsp">Change Password</a>
      <a href="../UserZone/Logout.jsp">Logout</a>
    </div>
  </div> 
  </div> 
</body>
</html>