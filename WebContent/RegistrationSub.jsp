<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="City.*,java.sql.*"%>
<html>
<head>
<title>Registration</title>
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
		Encryp en = new Encryp();
		String Name = request.getParameter("name");
		String Gen = request.getParameter("Gen");
		String Subject = request.getParameter("subject");
		String FName = request.getParameter("FName");
		String Contact = request.getParameter("Contact");
		String Email = request.getParameter("Email");
		String Pass = en.EncryptMyPasword(request.getParameter("Pass"));
		String Cpass = en.EncryptMyPasword(request.getParameter("Cpass"));
		String Clg = request.getParameter("Clg");
		String Adrs = request.getParameter("Adrs");
		String Zip = request.getParameter("zip");
		String Profile = request.getParameter("file");
		String Captcha = request.getParameter("Captcha");
		String genCap = request.getParameter("generatedCap");
		String Chk = request.getParameter("Chk");
		String ClsNam = request.getParameter("ClsNam");
		String Time = request.getParameter("Time");
		if (genCap.equals(Captcha)) {
			if (Pass.equals(Cpass)) {
				if (Chk != null && !Chk.equals("")) {
					//as a Teacher
					UType = "Teacher";
					cmd = "insert into Teacher values('" + Name + "','" + Gen + "','" + Subject + "','"+ClsNam+"','"+Time+"','" + Contact
							+ "','" + Email + "','" + Profile + "','" + Adrs + "','" + Zip + "')";
				} else {
					//as a Student
					UType = "Student";
					cmd = "insert into Student values('" + Name + "','" + Gen + "','" + FName + "','" + Clg + "','"
							+ Contact + "','" + Email + "','" + Profile + "','" + Adrs + "','" + Zip + "')";
				}
				if (connect(cmd) > 0) {
					cmd = "insert into Login values('" + Email + "','" + Pass + "','" + UType + "')";
					if (connect(cmd) > 0) {
						out.print(
								"<script>alert('Your Registerd Successfully');window.location.href='Login.jsp'</script>");
					} else
						out.println(
								"<script>alert('You are registerd successfully.But Unable to set the login details');window.location.href='Registration.jsp'</script>");
				} else
					out.print(
							"<script>alert('Registration could not be complited due to some technical problem');window.location.href='Registration.jsp'</script>");
			} else
				out.print(
						"<script>alert('Password and Confirm Password are not matched');window.location.href='Registration.jsp'</script>");
		} else
			out.print("<script>alert('Captcha does not Match');window.location.href='Registration.jsp'</script>");
	%>
</body>
</html>