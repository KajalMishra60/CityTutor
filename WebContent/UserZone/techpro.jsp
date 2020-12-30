<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<html>
<head>
<title>Teacher Profile</title>
<link href="../Image/tc1.gif" rel="icon" />
</head>
<body>
	<%!	String cmd;
	int connect(String cmd)throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection con=DriverManager.getConnection("jdbc:sqlserver://KAJAL\\SQLEXPRESS:1433;"+"instance=SQLEXPRESS;databaseName=CityTutor;integratedSecurity=true","","");
		Statement ps=con.createStatement();
		int i=ps.executeUpdate(cmd);
		return i;
	}%>
	<%
	String name=request.getParameter("name");
	String mail=request.getParameter("Email");
	String cls=request.getParameter("class");
	String file=request.getParameter("file");
	String sub=request.getParameter("sub");
	String time=request.getParameter("time");
	String contact=request.getParameter("Contact");
	cmd="update Teacher set Name='"+name+"',Class='"+cls+"',Subject='"+sub+"',ClsTime='"+time+"',Contact='"+contact+"',Email='"+mail+"',Profile='"+file+"' where Email='"+session.getAttribute("Uid").toString()+"'";
	if(connect(cmd)>0)
	{
		cmd="update Login set UserId ='"+mail+"' where UserId ='"+session.getAttribute("Uid").toString()+"'";
		if(connect(cmd)>0)
		{
		out.println("<script>alert('your Profile has been Updated Successfully');window.location.href='MyProfile.jsp'</script>");
		}
	}
	else
		out.println("<script>alert('Sorry!! your Profile can not be update ');window.location.href='#'</script>");
	%>
</body>
</html>