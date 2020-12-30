<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<link href="../Image/tc1.gif" rel="icon" />
<style>
#feedform {
	min-height: 500px;
	width: 94%;
	padding: 40px;
}

#feedbox1 {
	height: 30px;
	width: 75%;
	margin: 0px auto;
	background-color: #95B9C7;
	padding: 30px;
}

#feedbox2 {
	height: 500px;
	width: 75%;
	background-color: rgba(248, 82, 133, 0.1);
	margin: 0px auto;
	padding: 30px;
}

span {
	font-size: 25px;
	margin-right:5px;
}

.txt {
	width: 75%;
	height: 30px;
	font-size: 18px;
	padding: 3px 7px;
	color: black;
	margin-left:30px;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div id="feedform">
		<div id="feedbox1">
			<span
				style="font-family: Monotype-Corsiva; font-weight: bold; color: black; font-size: 25px">Good
				Feedback Is The Key To Improvement</span>
		</div>
		<div id="feedbox2">
		<form action="FeedbackSub.jsp" method="post">
			<span>Name: </span>
			<input type="text" class="txt" name="name"><br>
			<br>
			<br> <span>Email: </span>
			<input type="Email" name="id" class="txt"><br>
			<br>
			<br>
			<br> <span>Short Bio: </span>
			<textarea cols="30" rows="2" name="msg"
				style="resize: none; height: 200px; margin-left:-6px; width: 75%;"></textarea>
			<br>
			<br>
			<br>
			<br><a href="Feedback.jsp"> <input type="button"  value="RESET" class="txt"
				style="height: 30px; width: 35%; border-radius: 10px; background-color: lightblue;"></a>
			<input type="submit" value="PROCEED" class="txt"
				style="height: 30px; width: 35%; border-radius: 10px; background-color: lightblue; margin-left: 200px;">
		</form>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>