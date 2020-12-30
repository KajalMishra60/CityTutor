<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="City.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>City Tutor</title>
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
		String uid=session.getAttribute("Uid").toString();
		String utype=session.getAttribute("Utype").toString();
		Encryp en = new Encryp();
		String crntPass = en.EncryptMyPasword(request.getParameter("crntPass"));
		String newPass = en.EncryptMyPasword(request.getParameter("newPass"));
		String cnfrmPass = en.EncryptMyPasword(request.getParameter("cnfrmPass"));
		if(newPass.equals(cnfrmPass))
		{
			cmd="update Login set Passwd='"+newPass+"' where UserId='"+uid+"' and Passwd='"+crntPass+"' and UType='"+utype+"'";
			if(connect(cmd)>0)
			{
				out.print("<script>alert('Password changed successfully.');window.location.href='ChangePassword.jsp'</script>");
			}
			else
				out.print("<script>alert('Invalid current Password.');window.location.href='ChangePassword.jsp'</script>");
				
		}
		else
			out.print("<script>alert('Password and Confirm Password are not matched.')</script>");
		%>
</body>
</html>