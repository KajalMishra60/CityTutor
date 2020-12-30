<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Slider</title>
<script src="./css/jquery.js"></script>
<script>
var txt=["Students gots teachers according to their intrest","Provide anytime/ Anywhere Online Learning","Easy for students to use and customize","Search the tutors for the subject"];
var color=["rgba(234,78,90,0.3)","rgba(212,76,23,0.3)","rgba(123,23,254,0.3)"];
var arr=["imgs1.png","img7.jpg","imga.jpg","imgs.png"];
var imgno=0;
function slider(){
var dv1=document.getElementById("inner");
var img1=document.getElementById("slider");
img1.style.backgroundImage="url('image/"+arr[imgno]+"')";
dv1.style.background=color[imgno];
dv1.innerHTML="<i>"+txt[imgno]+"</i>"
imgno++;
if(imgno==arr.length)
imgno=0;
window.setTimeout("slider()",2000);
}
</script>
<style>
#slider{
height:300px;
width:100%;
background-image:url('image/img7.jpg');
}
#inner{
height:300px;
width:100%;
background:rgba(0,0,0,0.3);
color:white;
font-size:45px;
text-align:center;
line-height:400px;
}
</style>
</head>
<body onload="slider()">
<div id="slider">
<div id="inner">
WELCOME TO GGP AMETHI
</div>
</div>
</body>
</html>