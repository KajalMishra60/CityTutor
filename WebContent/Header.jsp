<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../Image/tc1.gif" rel="icon" />
<link href="./css/test.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="contentm"
		style="background: url('Image/s2.jpg') no-repeat fixed; background-size: 100% 100%;">
		<div id="inner"
			style="background-color: rgba(27, 1, 1, 0.55); height: 500px; width: 100%">
			<div id="Menu">
				<img src="Image/im.png"
					style="float: left; height: 70px; width: 250px;" />
				<div class="mn">
					<a href="Home.jsp" style="text-decoration: none; color: white;"><h3>Home</h3></a>
				</div>
				<div class="mn">
					<a href="AboutUs.jsp" style="text-decoration: none; color: white;">
						<h3>AboutUs</h3>
					</a>
				</div>
				<div class="mn">
					<a href="Review.jsp" style="text-decoration: none; color: white;">
						<h3>Review's</h3>
					</a>
				</div>
				<div class="mn">
					<a href="ImageGallery.jsp" style="text-decoration: none; color: white;">
						<h3>ImageGallery</h3>
					</a>
				</div>
				<div class="mn">
					<a href="Registration.jsp"
						style="text-decoration: none; color: white;"><h3>Registration</h3>
					</a>
				</div>
				<div class="mn">
					<a href="Login.jsp" style="text-decoration: none; color: white;"><h3>Login</h3></a>
				</div>
				<!-- <script type="text/javascript">
				function showclass() {
		var data = "<div style='width:100%'><br><br><span>Name:</span><input class='txt' name='Name'><br><span>Email:</span><input type='Time' class='txt' name='Email' ></div>";
			document.getElementById('btn').innerHTML = data;
	}
</script>
 </div>
			<div id="btn" onclick="showclass()" style="height:35px;width:20%;background:silver;float:right;border-radius:20px;text-align:center;margin:18px;color:white;padding-top:10px"><b>Enquiry</b></div> -->
			
			</div>			<div id="welcome"
				style="color: white; float: center; font-size: x-high;">
				<br> <br> <br> <br> <br> <br>
				<center>
					<h1>
						<p style="font-size: 80px; font-family: Arial Black">
						<% String url=request.getRequestURI();
						int p=url.lastIndexOf(".");
						String HOME=url.substring(url.lastIndexOf("/")+1,p);
						%>
							<b><%= HOME %></b>
						</p>
					</h1>
			</div>
		</div>
	</div>
</body>
</html>