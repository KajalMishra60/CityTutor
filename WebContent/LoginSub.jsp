<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,City.*"%>
<html>
<head>
<title>Login</title>
</head>
<body>
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
		Encryp en = new Encryp();
		String Email = request.getParameter("Email");
		String Pass = en.EncryptMyPasword(request.getParameter("Pass"));
		String Utype = request.getParameter("Utype");
		
		if (Email == null || Email == "") {
			out.print(
					"<script>alert('Please Enter The Registerd Email ID');window.location.href='Login.jsp'</script>");
		} else {
			if (Pass == null || Pass == "") {
				out.print("<script>alert('Please Enter the PassWord');window.location.href='Login.jsp'</script>");
			} else {
				cmd = "select * from Login where UserId='" + Email + "'and Passwd='" + Pass + "' and UType='"
						+ Utype + "'";
				ResultSet rs = connect(cmd);
				if (!rs.isBeforeFirst()) {
					out.print(
							"<script>alert('No Such User in Database');window.location.href='Login.jsp'</script>");
				} else
					while (rs.next()) {
						String un = rs.getString("Utype");
						out.print("<script>alert('Welcome in User Zone')</script>");
						if (un.equals("Student") || un.equals("Teacher")) {
							session.setAttribute("Uid", Email);
							session.setAttribute("Utype", un);
							response.sendRedirect("./UserZone/SmartSearch.jsp");
						} else if (un.equals("Admin")) {
							session.setAttribute("Aid", Email);
							session.setAttribute("Utype", un);
							response.sendRedirect("./AdminZone/Home.jsp");
						} else
							out.print("<script>alert('Invalid UserId or password.')</script>");

					}
			}
		}
	%>
</body>
</html>