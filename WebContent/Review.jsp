<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<html>
<head>
<title>Review</title>
<link href="Image/tc1.gif" rel="icon" />
<link href="./css/test.css" rel="stylesheet" type="text/css" />
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
	<div id="out">
		<%
			cmd = "select * from Feedback";
			ResultSet rs = connect(cmd);
			if (!rs.isBeforeFirst()) {
				out.print("<script>alert('No Such User in Database');</script>");
			} else
				while (rs.next()) {
		%>
		<div class="part">
			<div class="msg">
				<div class="feed">
					<q> <%= rs.getString("Msg")
 %>
					</q>
				</div>
				<div class="detail">
					<div class="name">
						<%= rs.getString("Name")
						%>
					</div>
					<div class="date">
						<%= rs.getString("FDate") %>
					</div>
					<div class="email">
						<%= rs.getString("Email") %>
					</div>
				</div>
			</div>
			<div class="image"></div>
			<%
				}
			%>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	</body>
	<%@ include file="Footer.jsp" %>
	</html>