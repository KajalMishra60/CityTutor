<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CityTutors</title>
<link href="Image/tc1.gif" rel="icon" />
<link href="css/test.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
#main{
height:506px;
width:99.8%;
background:green;
border:2px solid navy;
}
#intro{
	min-height:480px;
	width:69%;	
	font-family:'Times New Roman';
	font-style:oblique;
	font-size:x-large;
	background:rgba(81, 5, 5, 0.86);
	float:left;
	padding:1%
}
#noti{
	height:480px;
	width:27%;
	background:rgba(26, 8, 9, 0.79);
	float:right;
	font-size:30px;
	padding:1%;
	color:white;
}
#inner{

background-color:rgba(239, 203, 203, 0.14);
}
</style>
</head>
<body>
<%@ include file="Header.jsp" %>
<div id="main" style="background:url('Image/s2.jpg') no-repeat fixed; background-size: 100% 100%;">
<div class="inner"></div>
<div id="intro" >
<h1 style="font-family:Algerian;font-weight:bold;text-align:center; color:white;" ><u>INTRODUCTION</u></h1>
 <p style="color:white;">"<b>City Tutors.com</b>" provides tuition for all students by this single platform. In this portal students search tutors for tuition and tutor can register to teach tuition to students.</p>
</div>
<div id="noti">
<div class="inner" style=" background-color:rgba(210, 8, 2, 0.69);"></div>
<h3 style="font-family:Algerian;font-weight:bold; color:white;"><u>NOTIFICATION</u></h3>
<marquee direction="up" height="370px" onmouseover="stop()" onmouseleave="start()" ><ul >Team Members</ul>
<li>Kajal Mishra</li>
<li>Sakshi</li>
<li>Rekha</li>
<li>Arti</li>
</marquee>
</div>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>