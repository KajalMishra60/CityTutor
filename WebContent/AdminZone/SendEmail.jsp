<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../Image/tc1.gif" rel="icon" />
<style>
#SeOut {
	min-height: 500px;
	width: 100%;
}

#inner {
	min-height: 500px;
	width: 92.5%;
	background-color:rgba(6, 6, 43, 0.46);
	padding: 50px;
}

#SeBox {
	min-height: 300px;
	margin: 0px auto;
	width: 60%;
	background: rgba(68, 2, 2, 0.29);
	border-radius: 25% 0% 30% 0%;
	border: 3px solid black;
	padding: 30px;
	color: white;
}

::placeholder {
	color: white;
}

span {
	font-size: 25px;
}
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div id="SeOut"
		style="background: url('../Image/s2.jpg') no-repeat; background-size: 100% 100%;">
		<div id="inner">
		<br>
			<div id="SeBox">
				<br>
				<br> <span>Email Id:</span>
				<%-- <% String id=session.getAttribute("id").toString();
out.print(id);
if( id!= null && !id.equals(""))
{

}
%> --%>
				<input name="Email" id="mail" value="<%%>"
					style="height: 30px; width: 70%; padding: 3px 7px; font-size: 18px; background: rgba(0, 0, 0, 0.14); border: 2px solid black; margin-left: 30px;"><br>
				<br>
				<br> <span>Message:</span> <input type="password"
					placeholder="Enter your password"
					style="height: 30px; width: 70%; padding: 3px 7px; font-size: 18px; background: rgba(0, 0, 0, 0.14); border: 2px solid black; margin-left: 30px;"><br>
				<br>
				<br> <br> <input type="submit" class="txt"
					value="Send Email"
					style="height: 50px; width: 280px; font-size: 25px; font-weight: bold; background-color: rgba(59, 47, 3, .7); border-radius: 10px;">
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>


</body>
</html>