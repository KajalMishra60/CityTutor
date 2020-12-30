<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="City.*"%>
<html>
<head>
<title>Registration</title>
<link href="Image/tc1.gif" rel="icon" />
<style>
::placeholder {
	color: white;
}

#RegisOut {
	background: url('image/Content.jpg') fixed;
	background-size: 100% 100%;
	min-height: 500px;
	width: 92.5%;
	padding: 50px;
	background: rgba(35, 5, 40, 0.36);
}

#RegisBox {
	min-height: 500px;
	margin: 0px auto;
	width: 60%;
	background: rgba(35, 5, 40, 0.36);
	border-radius: 40px;
	border: 3px solid rgba(248, 246, 246, 0.73);
	padding: 30px;
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
<script type="text/javascript">
	function EnableDisableSub(chkReg) {
		chkReg.value = "Teacher"
		var subject = document.getElementById("subject");
		subject.disabled = chkReg.checked ? false : true;
		if (!subject.disabled) {
			subject.focus();
		}
		var FName = document.getElementById("FName");
		FName.disabled = chkReg.checked ? true : false;
		if (!FName.disabled) {
			FName.focus();
		}
		var Clg = document.getElementById("Clg");
		Clg.disabled = chkReg.checked ? true : false;
		if (!Clg.disabled) {
			Clg.focus();
		}
	}
	function showclass() {
		var data
		if (subject.disabled)
			data = "";
		else {
			data = "<span>Class:</span><input class='txt' name='ClsNam'><br><span>Class-Timing:</span><input type='Time' class='txt' name='Time' >";
			document.getElementById('class').innerHTML = data;
		}
	}
</script>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div id="RegisOut">
		<div id="RegisBox">
			<form action="RegistrationSub.jsp" method="post" name="RegForm"
				onSubmit="return formValidation();">
				<span>
					
					<style="font-family: 'Times New Roman'; font-weight: bold; color: white; font-size: 35px">Register
					Here...</span><br /> <br> <span>Name:</span> <input name="name" required
					placeholder="Enter your name" class="txt"><br> <br>
				<span>Gender:</span> <input type="radio" value="Male" name="Gen" />Male<input
					type="radio" value="Female" name="Gen" />Female<br> <br>
				<span>Are you Teacher?</span> <input type="checkbox" id="chkReg"
					name="Chk" value="student" onclick="EnableDisableSub(this)" /><br />
				<br /> <span>Subject:</span> <input id="subject"
					placeholder="Enter The Subject Want to Teach" name="subject"
					class="txt" disabled="disabled" onclick="showclass()" /><br>
				<br>
				<div id="class"></div>
				<!-- <input
					type="hidden" id="class" name="class"
					placeholder="Enter The Class Name for Teaching" class="txt" /> -->
				<span>Father Name:</span> <input id="FName"
					placeholder="Enter Your Father Name" class="txt" name="FName" /><br>
				<br> <span>College Name:</span> <input
					placeholder="Enter Your Collage Name" class="txt" name="Clg"
					id="Clg"><br> <br> <span>Contact No:</span> <input
					name="Contact" placeholder="Enter your Contact No" required class="txt"><br>
				<br> <span>Email Id:</span> <input name="Email"
					placeholder="Enter your Email Id" class="txt" type="Email" required><br>
				<br> <span>Password:</span> <input name="Pass"
					placeholder="Enter your Password" type="password" class="txt" required><br>
				<br> <span>Confirm Password:</span> <input name="Cpass" required
					placeholder="Retype your Password" type="password" class="txt"><br>
				<br> <span>Profile Pic:</span> <input type="file" name="file" required
					class="txt"><br> <br> <span>City:</span> <input
					name="Adrs" placeholder="Enter your Address" required class="txt"><br>
				<br> <span>ZIP Code</span> <input class="txt" name="zip" required
					placeholder="Enter your ZIP Code" /><br> <br> <span>
					<%
						Captcha cap = new Captcha();
						String captcha = cap.generateCaptcha();
					%> <%=captcha%>
				</span> <input name="generatedCap" type="hidden" value='<%=captcha%>'>
				<input id="cap" placeholder="Enter The Above Captcha" name="Captcha" required
					class="txt"><br> <br><input type="submit" class="txt" value="Register"
					style="height: 50px; width: 280px; font-size: 25px; font-weight: bold; background-color: rgba(59, 47, 3, .7); border-radius: 10px;">
			</form>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>