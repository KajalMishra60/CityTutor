<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Login</title>
<link href="Image/tc1.gif" rel="icon" />
<style>
#LogOut {
	background: url('image/Content.jpg') fixed;
	background-size: 100% 100%;
	min-height: 500px;
	width: 92.5%;
	padding: 50px;
	background: rgba(35, 5, 40, 0.36);
}

#LogBox {
	min-height: 400px;
	margin: 0px auto;
	width: 60%;
	border-radius: 40px;
	background: rgba(35, 5, 40, 0.36);
	border: 3px solid rgba(248, 246, 246, 0.73);
	padding: 30px;
	color: white;
}

::placeholder {
	color: white;
}

span {
	font-size: 25px;
}

.txt {
	width: 96%;
	height: 30px;
	border-radius: 10px;
	font-size: 18px;
	padding: 3px 7px;
	background-color: rgba(59, 47, 3, 0.32);
	color: white;
}
</style>
<script>
	function myFunction() {
		var x = document.getElementById("Pass");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div id="LogOut">
		<div id="LogBox">
		<form action="LoginSub.jsp">
			<span
				style="font-family: 'Times New Roman'; font-weight: bold; color: white; font-size: 35px">Login
				Here...</span><br />
			<br> <span>User Id:</span> <input name="Email" type="Email"
				placeholder="Enter your email-id" class="txt"><br>
			<br> <span>Password:</span><input type="password"
				placeholder="Enter your password" id="Pass" name="Pass" class="txt"><br>
			<br> <input type="checkbox" onclick="myFunction()">Show
			Password <br>
			<br> <span>UserType:</span> <select class="txt" name="Utype">
				<option value=null>..Select..</option>
				<option value="Student">Student</option>
				<option value="Teacher">Teacher</option>
				<option value="Admin">Admin</option>
			</select><br>
			<br>
			<br><input type="submit" class="txt"
					value="Login "
					style="height: 50px; width: 280px; font-size: 25px; font-weight: bold; background-color: rgba(59, 47, 3, .7); border-radius: 10px;"> <br>
			<br>
			</form>
		</div>
	</div>

	<%@ include file="Footer.jsp"%>
</body>
</html>