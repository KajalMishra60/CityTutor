<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Profile</title>
<link href="../Image/tc1.gif" rel="icon" />
<style>
#Profile {
	background: url('../image/Content.jpg') fixed;
	background-size: 100% 100%;
	min-height: 500px;
	width: 92.5%;
	padding: 50px;
	background-color: gray;
}

span {
	font-size: 25px;
}

#ProBox {
height:500px;
	width: 90%;
	border: 1px solid blue;
	padding: 30px;
	margin: 0px auto;
}

.txt {
	width: 70%;
	height: 30px;
	border-radius: 10px;
	font-size: 18px;
	background-color: rgba(59, 47, 3, 0.32);
	color: white;
}

#profile1 {
	height: 150px;
	width: 65%;
	border: 1px dashed blue;
	padding: 30px;
	margin: 0px auto;
}

.Probox1 {
	height:500px;
	width: 50%;
	float: left;
}
</style>
<script type="text/javascript">
function edit(){
	var name=document.getElementById("name");
	var mail=document.getElementById("mail");
	var file=document.getElementById("FilePro");
	var fname=document.getElementById("fname");
	var clg=document.getElementById("clg");
	var contact=document.getElementById("contact");
	var imgpic=document.getElementById("imgpic");
	var btn=document.getElementById("Btnupdate");
	name.disabled=false;
	mail.disabled=false;
	file.disabled=false;
	fname.disabled=false;
	clg.disabled=false;
	contact.disabled=false;
	imgpic.disabled=false;
	btn.disabled=false;
}
</script>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%!String cmd;
	Statement ps;

	ResultSet connect(String cmd) throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection con = DriverManager.getConnection("jdbc:sqlserver://KAJAL\\SQLEXPRESS:1433;"
				+ "instance=SQLEXPRESS;databaseName=CityTutor;integratedSecurity=true", "", "");
		Statement ps = con.createStatement();
		ResultSet rs = ps.executeQuery(cmd);
		return rs;
	}%>
	<%
	String mail=session.getAttribute("Uid").toString();
cmd = "select * from Student where Email='"+mail+"'";
ResultSet rs = connect(cmd);
if (!rs.isBeforeFirst()) {
	out.print("<script>alert('No Such User in Database');</script>");
} else
	while (rs.next()) {
		String name= rs.getString("Name");
		String gen= rs.getString("Gender");
		String fname= rs.getString("Fname");
		String Email= rs.getString("Email");
		String Contact= rs.getString("Contact");
		String ClgName= rs.getString("ClgName");
%>
	<br>
	<br>
	<div id="profile">
		<div id="profile1">
			<span
				style="font-family: 'Times New Roman'; font-weight: bold; color: gray; font-size: 35px">My
				Profile ...</span><br>
			<p style="font-size: 23px; color: blue;">This is the page where
				you can customize your profile.</p>
			<p style="font-size: 23px; color: blue;">This is visible for Admin only but only can changed by you.</p>
		</div>
		<br> <br>
			<form action="StuProfileSub.jsp" method="post">
			<div id="ProBox">
				<div class="Probox1">
					<span>Name:</span><br> 
					<input name="name" class="txt" value="<%= name %>" disabled="disabled" id="name"
						placeholder="Enter your Name" style="margin: 5px auto;"><br>
					<br> <br> 
					<span>Gender:</span> 
					<input type="radio"	name="Gen" />Male<input type="radio" name="Gen" />Female<br>
					<br> <br> <span>Email Id:</span><br> 
					<input name="Email" class="txt" disabled="disabled" value="<%= Email %>" style="margin: 5px auto;" id="mail"><br>
						<span>College</span> <br>  
						<input name="clg" id="clg" disabled="disabled" class="txt" value="<%= ClgName %>" style="margin: 5px auto;"><br> <br> 
						<input type="file" name="file" disabled="disabled" id="FilePro" class="txt"><br> <br> <br>
					<input type="button" value="Edit Profile" id="Btnedit" class="txt" onClick="edit()" style="margin: 5px auto;">
				</div>
				<div class="Probox1"><br><span>Father Name</span> <br>  <br>  
				<input name="fname" class="txt" id="fname" value="<%= fname %>" disabled="disabled" style="margin: 5px auto;"><br><br> <br> 
				<span>Contact No:</span><br> 
				<input name="Contact" value="<%= Contact %>" id="contact" disabled="disabled" placeholder="Enter your Contact No" class="txt" style="margin: 5px auto;"><br> <br> <br> 
				<span>Profile Picture:</span> 
				<input type="image" disabled="disabled" id="imgpic" height="100px" width="100px"><br> <br> <br> <br> 
				<input type="submit" disabled="disabled" value="update profile" id="Btnupdate" class="txt">
						<% } %>
				</div>
			</div>
		</form>
	</div>
	<br>
	<%@ include file="Footer.jsp"%>
</body>
</html>