<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="City.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%!String cmd;
Statement ps;
int connect(String cmd)throws Exception {
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	Connection con=DriverManager.getConnection("jdbc:sqlserver://KAJAL\\SQLEXPRESS:1433;"+"instance=SQLEXPRESS;databaseName=CityTutor;integratedSecurity=true","","");
	Statement ps=con.createStatement();
	int i=ps.executeUpdate(cmd);
	return i;
}%>
<% 
		String uid=session.getAttribute("Aid").toString();
		Encryp en = new Encryp();
		String crntPass = en.EncryptMyPasword(request.getParameter("Old"));
		String newPass = en.EncryptMyPasword(request.getParameter("New"));
		String cnfrmPass = en.EncryptMyPasword(request.getParameter("Cpass"));
		if(newPass.equals(cnfrmPass))
		{
			cmd="update Login set Passwd='"+newPass+"' where UserId='"+uid+"' and Passwd='"+crntPass+"'";
			if(connect(cmd)>0)
			{
				out.print("<script>alert('Password changed successfully.')</script>");
			}
			else
				out.print("<script>alert('Invalid current Password.')</script>");
				
		}
		else
			out.print("<script>alert('Password and Confirm Password are not matched.')</script>");
		%>
</body>
</html>