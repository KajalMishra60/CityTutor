<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Image Gallary</title>
<link href="Image/tc1.gif" rel="icon" />
<script type="text/javascript" src="https://slideshow.triptracker.net/slide.js"></script>
    <script type="text/javascript">
        var viewer = new PhotoViewer();
        viewer.add('Image/a.jpg');
        viewer.add('Image/2w.jpg');
        viewer.add('Image/c.jpg');
        viewer.add('Image/r.jpg');
        viewer.add('Image/qs.jpg');
        viewer.add('Image/oi.jpg');
        window.location.href = "javascript:void(viewer.show(0))";
    </script>
</head>
<body>
<%@ include file="Header.jsp" %>
<center><h1>Thank you For Watching</h1>
        <h1>Hope you Enjoyed</h1>
<%@ include file="Footer.jsp" %>
</body></html>