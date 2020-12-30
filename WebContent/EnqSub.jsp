<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%!String UType = "Student";
	String cmd;
	Statement ps;

	int connect(String cmd) throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection con = DriverManager.getConnection("jdbc:sqlserver://KAJAL\\SQLEXPRESS:1433;"
				+ "instance=SQLEXPRESS;databaseName=CityTutor;integratedSecurity=true", "", "");
		Statement ps = con.createStatement();
		int i = ps.executeUpdate(cmd);
		return i;
	}%>
	
	<%
	String Email = request.getParameter("Email");
	String Name = request.getParameter("Name");
	String Msg= request.getParameter("Msg");
	String Mobile = request.getParameter("mobile");
	cmd = "insert into Enquiry (Email,Name,Msg,Contact,EqDate) values('" + Email + "','" + Name + "','" + Msg + "','"+Mobile+"','"+new java.util.Date().toString()+"')";
	if (connect(cmd) > 0) {
		out.print("<script>alert('Your Msg has been Submitted. You can wait for response');window.location.href='AboutUs.jsp'</script>");
	} else
		out.println(
				"<script>alert('Sorry!!! Your Msg Can not be submitted');window.location.href='AboutUs.jsp'</script>");
%>
</body>
</html>