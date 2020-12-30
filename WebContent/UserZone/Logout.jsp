<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
 <link href="../Image/tc1.gif" rel="icon" />
</head>
<body>

 <img src="../image/e2.png" height="200px" width="200px" style="margin:50px" />
 <%
session.invalidate();
response.sendRedirect("../Login.jsp");
        %>
</body>
</html>