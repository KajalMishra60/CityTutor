<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../Image/tc1.gif" rel="icon" />
</head>
<body>
	<%!String cmd;
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
		String Uid = session.getAttribute("Uid").toString();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String msg = request.getParameter("msg");
		String Utype = session.getAttribute("Utype").toString();

		if (Uid.equals(id)) {
			cmd = "insert into Feedback (Name,Email,Msg,Utype,FDate) values('" + name + "','" + id + "','" + msg
					+ "','" + Utype + "','" + new java.util.Date().toString() + "')";
			if (connect(cmd) > 0) 
				out.print("<script>alert('Thank You For Giving Feedback');window.location.href='Feedback.jsp'</script>");
			else
				out.print("<script>alert('Sorry Your Feedback could not be submitted')</script>");
		} else
			out.println("<script>alert('Sorry your Feedback can not be submitted due to Session Expired or absence of Email');window.location.href='Feedback.jsp'</script>");
	%>
</body>
</html>