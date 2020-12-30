<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
td h2{
	padding-top: 10px;
	text-align: center
}
td{
font-size:20px;
text-align:center;
color:#d1e0ef;
padding:10px;
}
#main {
	height: 500px;
	wisth: 100%;
	overflow:scroll;
	}

#inner {
	min-height: 500px;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.46);
	padding: 50px;
}
</style>
</head>
<body>
<%@ include file="menu.jsp"%>
	<%!String cmd;

	ResultSet connect(String cmd) throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection con = DriverManager.getConnection("jdbc:sqlserver://KAJAL\\SQLEXPRESS:1433;"
				+ "instance=SQLEXPRESS;databaseName=CityTutor;integratedSecurity=true", "", "");
		Statement ps = con.createStatement();
		ResultSet rs = ps.executeQuery(cmd);
		return rs;
	}%>
	<div id="main" style="background: url('../Image/s2.jpg') no-repeat fixed; background-size: 100% 100%;">
		<table style="background: rgba(0, 0, 0, 0.60); width: 100%">
			<tr>
				<td><h2>Name</h2></td>
				<td><h2>Gender</h2></td>
				<td><h2>Subject</h2></td>
				<td><h2>Email</h2></td>
				<td><h2>Contact</h2></td>
				<td><h2>Class</h2></td>
				<td><h2>Class Time</h2></td>
				<td><h2>ZIPCode</h2></td>
				<td><h2>Option</h2></td>
			</tr>
	<%
	cmd = "select * from Teacher,Login where Teacher.Email=Login.UserId and UType='Teacher'";
	ResultSet rs = connect(cmd);
	if (!rs.isBeforeFirst()) {
		out.print("<script>alert('No Such User in Database');</script>");
	} else
		while (rs.next()) {
	%>
	<tr>
				<td>
					<%
					String Name = rs.getString("Name");
					out.print(Name);
						%>
				</td>
				<td>
					<%
					String gen = rs.getString("Gender"); 
					out.print(gen);%>
				</td>
				<td>
					<%
					String Sub= rs.getString("Subject");
					out.print(Sub);
						%>
				</td>
				<td>
					<%
					String mail = rs.getString("Email");
					out.print(mail);
						%>
				</td>
				<td>
					<%
					String dt = rs.getString("Contact");
					out.print(dt);
						%>
				</td>
				<td>
					<%
					String Class = rs.getString("Class");
					out.print(Class);
						%>
				</td>
				<td>
					<%
					String ClsTime = rs.getString("ClsTime");
					out.print(ClsTime);
						%>
				</td>
				<td>
					<%
					String ZIP = rs.getString("ZIPCode");
					out.print(ZIP);
						%>
				</td>
				<td >
				<a href="Block.jsp" style="color:white">
					<%
					out.print("Block");
					session.setAttribute("Id", mail);
		}
						%>
						</a>
				</td>
			</tr>
		</table>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>