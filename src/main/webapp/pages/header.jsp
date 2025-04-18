<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
    <link href="https://fonts.googleapis.com/css2?family=Italianno&display=swap" rel="stylesheet">

</head>
<body>
<header>
    <nav>
        <ul class="nav-links">
            <li><a href="${pageContext.request.contextPath}/pages/home1.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/pages/contactus.jsp">Contact Us</a></li>
            <li><a href="${pageContext.request.contextPath}/pages/aboutus.jsp">About Us</a></li>
            <li><a href="#">Services</a></li>
             <li><a href="${pageContext.request.contextPath}/pages/booking.jsp">Booking</a></li>
        </ul>
        <div class="logo">The Beauty Lab</div>
    </nav>
   
</header>

</body>
</html>