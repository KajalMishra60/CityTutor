<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<link href="../Image/tc1.gif" rel="icon" />
<style>
#LogOut{
min-height:500px;
width:92.5%;
padding:50px;
}
#LogBox{
height:400px;
margin:0px auto;
width:85%; 
padding:30px;
color:blue;
border:1px dashed blue;
}
::placeholder {
    color:white;
}
        span {
            font-size:25px;
        }
.txt
        {
       width:70%;
       height:30px;
       font-size:18px;
       padding:3px 7px;
       color:gray;
       box-shadow:rgba(128,128,128,0.69)5px 5px;
        }
</style>
</head>
<body>
<%@ include file="Header.jsp" %>
<div id="LogOut">
 <div id="LogBox">
 <form action="ChangePassSub.jsp" method="post">
<span style="font-family:'Times New Roman';font-weight:bold ;color:gray;font-size:30px">Please enter a new password...</span><br /><br>
<hr style="with:90%;color:blue;"><br><br>
<span>Current Passwrod:</span>
<input type="password" name="crntPass" placeholder="Enter your password" class="txt" style="margin-left:30px;"><br><br><br>
<span>New Password:</span>
<input type="password" name="newPass" placeholder="Enter your new password" class="txt" style="margin-left:60px;"><br><br><br>
<span>Confirm Password:</span>
<input type="password" name="cnfrmPass" placeholder="Enter your confirm password" class="txt" style="margin-left:20px;"><br><br><br><br>
<input type="submit" value="Submit" class="txt" style="font-weight:bold;background-color:aqua;height:40px;width:40%;margin-left:200px;border-radius:10px;">
</form></div>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>