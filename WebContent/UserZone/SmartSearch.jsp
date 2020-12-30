<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Smart Search</title>
<link href="../Image/tc1.gif" rel="icon" />
<style>
#Search {
	min-height: 500px;
	width: 100%;
	background-color: rgba(248, 82, 133, 0.1);
}

span {
	font-size: 25px;
}

#SearchBox {
	height: 380px;
	width: 55%;
	margin: 0px 20%;
	padding: 30px;
}

.txt {
	width: 100%;
	height: 30px;
	border-radius: 10px;
	font-size: 18px;
	padding: 3px 7px;
	background-color: rgba(248, 82, 133, 0.1);
	color: black;
}

#searchB {
	height: 200px;
	width: 59.5%;
	margin: 0px 20%
}

.serch2 {
	height: 200px;
	width: 30%;
	float: left;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div id="Search">
		<div id="searchB">
			<div class="serch2"></div>
			<div class="serch2">
				<img src="../Image/s3.png" style="height: 200px; width: 100%">
			</div>
			<div class="serch2"></div>
		</div>
		<div id="SearchBox">
		<form action="SearchRes.jsp" method="post" >
			<table style="width: 80%;">
				<tr>
					<td><span>Subject: </span></td>
					<td><input type="text" class="txt" name="Subject"
						placeholder="Enter Subject name"><br> <br></td>
				</tr>
				<tr>
					<td><span>Gender : </span></td>
					<td><input type="radio" name="Gen" />Male<input type="radio"
						name="Gen" />Female<br> <br></td>
				</tr>
				<tr>
					<td><span>Class Name : </span></td>
					<td><input type="text" class="txt" name="Class"
						placeholder="Enter your class name"><br> <br></td>
				</tr>
				<tr>
					<td><span>Class Timing : </span></td>
					<td><input type="Time" class="txt" name="Time"
						placeholder="Enter your Class timing"><br> <br></td>
				</tr>
				<tr>
					<td><span>City : </span></td>
					<td><input type="text" class="txt" name="City" placeholder="Enter City"><br>
						<br></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Search"
						class="txt" style="width: 50%; margin: 0px 20%"></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>