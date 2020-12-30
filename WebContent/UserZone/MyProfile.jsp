<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.sql.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>My Profile</title>
<link href="../Image/tc1.gif" rel="icon" />
<style>
#Profile {
	min-height: 500px;
	width: 92.5%;
	padding: 50px;
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
	var cls=document.getElementById("class");
	var mail=document.getElementById("mail");
	var file=document.getElementById("FilePro");
	var time=document.getElementById("time");
	var sub=document.getElementById("sub");
	var contact=document.getElementById("contact");
	var imgpic=document.getElementById("imgpic");
	var btn=document.getElementById("Btnupdate");
	name.disabled=false;
	cls.disabled=false;
	mail.disabled=false;
	file.disabled=false;
	time.disabled=false;
	sub.disabled=false;
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
cmd = "select * from Teacher where Email='"+mail+"'";
ResultSet rs = connect(cmd);
if (!rs.isBeforeFirst()) {
	out.print("<script>alert('No Such User in Database');</script>");
} else
	while (rs.next()) {
		String name= rs.getString("Name");
		String gen= rs.getString("Gender");
		String sub= rs.getString("Subject");
		String Email= rs.getString("Email");
		String Contact= rs.getString("Contact");
		String Class= rs.getString("Class");
		String ClsTime= rs.getString("ClsTime");
%>
	<br>
	<br>
	<div id="profile">
		<div id="profile1">
			<span
				style="font-family: 'Times New Roman'; font-weight: bold; color: gray; font-size: 35px">My
				Profile ...</span><br>
			<p style="font-size: 23px; color: blue;">This is the page where
				you can customize your profile according to your carrier objective
				and based on your knowledge.</p>
			<p style="font-size: 23px; color: blue;">This is visible for all
				the students but only can changed by you.</p>
		</div>
		<br> <br>
		<form action="techpro.jsp" method="post">
			<div id="ProBox">
				<div class="Probox1">
					<span>Name:</span><br>
					 <input disabled="disabled" class="txt" name="name" id="name" value="<%= name %>"	placeholder="Enter your Name" style="margin: 5px auto;"><br>
					<br> <br> <span>Gender:</span> 
					<input type="radio"	name="Gen" />Male<input type="radio" name="Gen" />Female<br>
					<br> <br> <span>Email Id:</span><br> 
					<input	name="Email" id="mail" disabled="disabled" class="txt" value="<%= Email %>"style="margin: 5px auto;"><br><br>
					<span>Class</span> <br>  
					<input name="class" id="class"  disabled="disabled" class="txt" value="<%= Class %>" style="margin: 5px auto;"><br> <br> 
					<input	type="file" name="file" disabled="disabled" id="FilePro" class="txt"><br> <br> <br>
					<input type="button" value="Edit Profile" id="Btnedit" class="txt" onClick="edit()" style="margin: 5px auto;">
				</div>
				<div class="Probox1">
					<span>Subject:</span><br> 
					<input name="sub" id="sub" disabled="disabled" value="<%= sub %>" class="txt" placeholder="Enter your Qualification"
						style="margin: 5px auto;"><br><br> <span>Timing</span> <br>   
						<input  id="time" disabled="disabled" name="time" class="txt" value="<%= ClsTime %>" style="margin: 5px auto;"><br><br>
						<span>Contact No:</span><br> 
						<input id="contact" disabled="disabled" name="Contact" value="<%= Contact %>" placeholder="Enter your Contact No" class="txt"
						style="margin: 5px auto;"><br> <br>
						<span>Profile Picture:</span><br><br> <input  disabled="disabled" type="image" id="imgpic" height="100px" width="100px"><br>
						<input  disabled="disabled" type="submit" value="update profile" id="Btnupdate" class="txt">
						<% } %>
				</div>
			</div>
		</form>
	</div>
	<br>
	<%@ include file="Footer.jsp"%>
</body>
</html>