<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
<link href="Image/tc1.gif" rel="icon" />
<style>
#About{
height:auto;
width:100%;
background:url('image/Content.jpg') fixed;
background-size:100% 100%;
background:#ba9f79;
}
#AbDown{
height:350px;
width:100%;
}
#AbUp{
height:400px;
width:100%;
}
.part{
height:300px;
width:28%;
margin:2% 2%;
background:rgba(35, 5, 40, 0.36);
border-radius:40px; 
border:3px solid rgba(248, 246, 246, 0.73);
float:left;
position: relative;
}
.image {
  width: 200%;
  height: 245px;
  margin:4%;
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  border-radius:40px; 
  background-color:rgba(35, 5, 40, 0.8) ;
  overflow: hidden;
  width: 100%;
  height: 0;
  transition: .5s ease;
}

.part:hover .overlay {
  height: 100%;
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}
#box
{
height:auto;
width:350px;
position:absolute;
top:100px;
right:-300px;
transition:right 1s;
}
#box:hover
{
right:0px;
transition:right 1s;
}
#left
{
height:300px;
width:50px;
background:#95b9c7;
float:left;
color:white;
text-align:center;
font-size:30px;
padding-top:50px;
}
#right
{
height:300px;
width:250px;
background:rgba(248,82,133,0.40);
float:left;
padding:25px;

}
.txt
{
height:40px;
width:250px;
margin-bottom:5px;
}
.btn
{
background:#95b9c7;
color:white;
height:40px;
width:100%;
border:none;
}
</style>
</head>
<body>
<%@ include file="Header.jsp" %>
<div id="About">
<div id="AbUp">
<div class="part" style="width:25%;background:rgba(35, 5, 40, 0.36);height:300px;margin-left:5%;">
<img src="Image/map.png" alt="Address" class="image" style="width:90%;height:90%;border-radius:40px;">
  <div class="overlay">
    <div class="text"><h1 style="font-family:Castellar;font-weight:bold;color:white;text-align-last:center">Address</h1>
                <hr />
                    Government Girls Polytechnic 
                    <br />Islamganj Dhammaur Road, Kamauliya,Amethi, Uttar Pradesh 
                PIN : 227405</div>
  </div>
</div>
<div class="part" style="width:25%;background:rgba(35, 5, 40, 0.36);height:300px;margin-left:5%;">
<img src="Image/mail.png" alt="Email" style="width:90%;height:90%;border-radius:40px;" class="image" >
  <div class="overlay">
    <div class="text"><h1 style="font-family:Castellar;font-weight:bold;color:white;text-align-last:center">Email </h1>
                <hr />
                  ggp_amethi@rediffmail.com</div>
  </div></div>
<div class="part" style="width:25%;background:rgba(35, 5, 40, 0.36);height:300px;margin-left:5%;">
<img src="Image/phone.png" alt="Contact no" style="width:90%;height:90%;border-radius:40px;" class="image">
  <div class="overlay">
    <div class="text"><h1 style="font-family:Castellar;font-weight:bold;color:white;text-align-last:center">Phone</h1>
                <hr />
                   05368-222014
</div>
  </div></div>
</div>
<div id="AbDown">
<iframe width="100%" height="300" style="margin-top:10px" frameborder="0" scrolling="yes"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57301.63181999003!2d81.81235909999998!3d26.152663699999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1684f8e1e78ed28!2sGovernment+Girls+polytechnic+College!5e0!3m2!1sen!2sin!4v1483267738970"></iframe>
</div>
</div>
<div id="box">
<div id="left">E<br>N<br>Q<br>U<br>I<br>R<br>Y</div>
<div id="right">
<h1 style="text-align:center;color:white;font-family:Monotype Corsiva;">ENQUIRY FORM</h1>
<form action="EnqSub.jsp" method="post">
<input class="txt" name="Name" placeholder="Enter Your Name..."/><br>
<input type="email" name="Email" class="txt" placeholder="Enter Your email..."/><br>
<input type="number" name="mobile" class="txt" placeholder="Enter Your Mobile No..."/><br>
<textarea class="txt" name="Msg" placeholder="Enter Your Message..."></textarea><br>
<input type="submit" class="btn" value="SUBMIT"/>
</form>
</div>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>