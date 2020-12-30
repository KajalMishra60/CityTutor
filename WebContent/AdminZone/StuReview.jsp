<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../Image/tc1.gif" rel="icon" />
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
	Statement ps;

	ResultSet connect(String cmd) throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection con = DriverManager.getConnection("jdbc:sqlserver://KAJAL\\SQLEXPRESS:1433;"
				+ "instance=SQLEXPRESS;databaseName=CityTutor;integratedSecurity=true", "", "");
		Statement ps = con.createStatement();
		ResultSet rs = ps.executeQuery(cmd);
		return rs;
	}%>
	<div id="main"
		style="background: url('../Image/s2.jpg') no-repeat fixed; background-size: 100% 100%;">
		<table style="background: rgba(0, 0, 0, 0.60); width: 100%">
			<tr>
				<td><h2>ID.</h2></td>
				<td><h2>Name</h2></td>
				<td><h2>Message</h2></td>
				<td><h2>Email</h2></td>
				<td><h2>Date</h2></td>
				<td><h2>Option</h2></td>
			</tr>
			<%
cmd = "select * from Feedback where Utype='Student'";
ResultSet rs = connect(cmd);
if (!rs.isBeforeFirst()) {
	out.print("<script>alert('No Such User in Database');</script>");
} else
	while (rs.next()) {
%>
			<tr>
				<td>
					<%
					String ID = rs.getString("Fid");
					out.print(ID);
					
						%>
				</td>
				<td>
					<%
					String Name = rs.getString("Name");
					out.print(Name);
						%>
				</td>
				<td>
					<%
					String Msg= rs.getString("Msg");
					out.print(Msg);
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
					String dt = rs.getString("FDate");
					out.print(dt);
						%>
				</td>
				<td>
				<a href="del.jsp" style="color:white">
					<%
					out.print("Delete");
					session.setAttribute("Id",ID);
	}
						%>
				</a></td>
			</tr>
		</table>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>