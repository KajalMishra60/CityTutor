<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Header</title>
<link href="../css/User.css" rel="stylesheet" type="text/css" />

<style>
.dropbtn {
    background-color:White;
    color:black;
    font-family:'Times New Roman';
font-size:25px;
font-weight:bold;
margin-left:40px;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<body>
<div id="up">
<div id="logo">
			<img alt="logo" src="../Image/imgl.png" height="70px" width="100%">
		</div>
<div id="menu"><ul>
<a href="SmartSearch.jsp"><li>Smart Search</li></a>
<a href="UpAndDown.jsp"><li>UpAndDown</li></a>
<a href="StuProfile.jsp"><li>Student Profile</li></a>
<a href="MyProfile.jsp">Teacher Profile</a>
<a href="Feedback.jsp"><li>Feedback</li></a>
<div class="dropdown">
  <li class="dropbtn">Setting</li>
  <div class="dropdown-content">
        <a href="ChangePassword.jsp">Change Password</a>
    <a href="Logout.jsp">Logout</a>
  </div>
</div>
</ul></div>
</div>
</body>
</html>