<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String cmd;

int connect(String cmd) throws Exception {
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	Connection con = DriverManager.getConnection("jdbc:sqlserver://KAJAL\\SQLEXPRESS:1433;"
			+ "instance=SQLEXPRESS;databaseName=CityTutor;integratedSecurity=true", "", "");
	Statement ps = con.createStatement();
	int i = ps.executeUpdate(cmd);
	return i;
	}
		%>
		<%
		String id=session.getAttribute("Id").toString();
		cmd="Delete from Login Where UserId='"+id+"' and Utype='Teacher'";
		if(connect(cmd) > 0)
		{
			out.print(
					"<script>alert('Your Choosen User are Blocked Succesfully');window.location.href='ManageProfile.jsp'</script>");
		}
		else
			out.print(
					"<script>alert('Sorry ! Your wish can not be complited due to problem either Deleted already or some Technical Problems');window.location.href='ManageProfile.jsp'</script>");
		%>
		
</body>
</html>