<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<html>
<head>
<title>Search Result</title>
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


</style>
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
	<div id="main"
		style="background: url('../Image/s2.jpg') no-repeat fixed; background-size: 100% 100%;">
		<table style="background: rgba(0, 0, 0, 0.60); width: 100%">
			<tr>
				<td><h2>Subject</h2></td>
				<td><h2>Class</h2></td>
				<td><h2>Timing</h2></td>
				<td><h2>Address</h2></td>
				<td><h2>Option</h2></td>
			</tr>
			<%String Sub=request.getParameter("Subject");
			String Cls=request.getParameter("Class");
			String Time=request.getParameter("Time");
			String City=request.getParameter("City");
			cmd="select * from Teacher where Subject='"+Sub+"' and Class='"+Cls+"' and ClsTime='"+Time+"' and Address='"+City+"' ";
			ResultSet rs = connect(cmd);
			if (!rs.isBeforeFirst()) {
				out.print(
						"<script>alert('Sorry !!! No Teachers are available,Try again after some Time');window.location.href='#'</script>");
			} else
				while (rs.next()) {
%>
			<tr>
				<td>
					<%
					String sub= rs.getString("Subject");
					out.print(sub);
					
						%>
				</td>
				<td>
					<%
					String cls= rs.getString("Class");
					out.print(cls);
						%>
				</td>
				<td>
					<%
					String time= rs.getString("ClsTime");
					out.print(time);
						%>
				</td>
				<td>
					<%
					String city= rs.getString("Address");
					out.print(City);
						%>
				</td>
				<td>
				<a href="Detail.jsp" style="color:white">
					<%
					out.print("Show Interest");
					session.setAttribute("Tid", rs.getString("Email"));
	}
						%>
				</a></td>
			</tr>
		</table>
	</div>
	<%@ include file="Footer.jsp"%>
	</body>
</html>