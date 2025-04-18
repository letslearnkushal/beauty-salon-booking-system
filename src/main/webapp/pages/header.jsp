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
 <header class="beauty-header">
    <nav class="navbar">
      <ul class="nav-links">
        <li><a href="${pageContext.request.contextPath}/pages/home1.jsp">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/pages/contactus.jsp">Contact Us</a></li>
        <li><a href="${pageContext.request.contextPath}/pages/aboutus.jsp">About Us</a></li>
        <li><a href="${pageContext.request.contextPath}/pages/services.jsp">Services</a></li>
        <li><a href="${pageContext.request.contextPath}/pages/booking.jsp">Booking</a></li>
      </ul>
    </nav>
      <div class="auth-buttons">
    <button class="login-btn">Login</button>
    <button class="signup-btn">Sign Up</button>
  </div>
    <h1 class="brand">The Beauty Lab</h1>
  </header>

</body>
</html>