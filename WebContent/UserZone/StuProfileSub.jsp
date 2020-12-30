<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<html>
<head>
<title>Insert title here</title>
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
	String file=request.getParameter("file");
	String fname=request.getParameter("fname");
	String clg=request.getParameter("clg");
	String contact=request.getParameter("Contact");
	cmd="update Student set Name='"+name+"',FName='"+fname+"',ClgName='"+clg+"',Contact='"+contact+"',Email='"+mail+"',Profile='"+file+"' where Email='"+session.getAttribute("Uid").toString()+"'";
	if(connect(cmd)>0)
	{
		cmd="update Login set UserId ='"+mail+"' where UserId ='"+session.getAttribute("Uid").toString()+"'";
		if(connect(cmd)>0)
		{
		out.println("<script>alert('your Profile has been Updated Successfully');window.location.href='StuProfile.jsp'</script>");
		}
	}
	else
		out.println("<script>alert('Sorry!! your Profile can not be update ');window.location.href='StuProfile.jsp'</script>");
	%>
</body>
</html>