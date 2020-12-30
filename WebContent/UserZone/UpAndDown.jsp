<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Uploading And downloading </title>
<link href="../Image/tc1.gif" rel="icon" />
<style>
#outer{
min-height:500px;
width:92.5%;
}
#outerUp{
height:200px;
width:65%;
margin:0px auto;
padding:30px;
border-radius:40px;
border:1px dashed blue;
}
#outerDown{
height:250px;
width:65%;
padding:30px;
margin:0px auto;
border-radius:40px;
border:1px solid blue;
}
span {
font-size:25px;
}
.txt{
height:35px;
width:60%;
backgroung-color:white;
font-size:18px;
color:black;
 border-radius:10px;
}
</style>
</head>
<body>
<%@ include file="Header.jsp" %>
<br><br>
<div id="outer">
<div id="outerUp">
<span style="font-family:'Times New Roman';font-weight:bold ;color:black;font-size:35px">Upload a file...</span><br />
<hr width="80%" color="black"> 
<input type="file" class="txt" ><br><br>
<input type="submit" value="Upload" class="txt">
</div><br><br>
<div id="outerDown"></div>
</div>
<br><br>
<%@ include file="Footer.jsp"%>
</body>
</html>