<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<html>
<head>
<title>Detail of Teacher</title>
<link href="../Image/tc1.gif" rel="icon" />
<style type="text/css">
h1{
color:#d1e0ef;
}
span{
color:white;
font-size:30px;
padding-left:35%;
}
</style>
</head>
<body>
<%@ include file="Header.jsp"%>
<%!String cmd;
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
		<div id="inner" style="background: rgba(0, 0, 0, 0.60); height:100%;width:100%;padding:13px;">
		<%
		cmd="select * from Teacher where Email='"+session.getAttribute("Tid")+"'";
			ResultSet rs = connect(cmd);
			if (!rs.isBeforeFirst()) {
				out.print(
						"<script>alert('Sorry !!!Details are not available, Try again after some Time');window.location.href='#'</script>");
			} else
				while (rs.next()) {
					 %>
					 <div style="text-align:justify;width:40%;height:auto;float:left;"> <h1>Name</h1><span><%= rs.getString("Name") %></span>
					 <h1>Gender</h1><span><%= rs.getString("Gender") %></span>
					<h1>Contact No.</h1><span><%= rs.getString("Contact") %></span>
					 <h1>Email</h1><span><%= rs.getString("Email") %></span>
					 
					 </div>
					 <div  style="width:40%;height:auto;float:right"> 
					 <h1>Profile</h1>
					 <img src="../Image/oi.jpg" height="150px;" width="150px">
					  <h1>Address</h1>
					 <span><%= rs.getString("Address") %></span>
						<h1>ZIP Code</h1>
					 <span><%= rs.getString("ZIPCode") %></span>
					 
</div>
					 <%} %>
</div></div>
<%@ include file="Footer.jsp"%>
</body>
</html>