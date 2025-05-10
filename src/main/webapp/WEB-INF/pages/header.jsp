<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    HttpSession userSession = request.getSession(false);
    String currentUser = (String) (userSession != null ? userSession.getAttribute("username") : null);
    pageContext.setAttribute("currentUser", currentUser);
%>
<!-- Set contextPath variable -->
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
        <li><a href="${pageContext.request.contextPath}/">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/servicescontroller">Services</a></li>
        <li><a href="${pageContext.request.contextPath}/bookappointment">Book Appointment</a></li>
        <li><a href="${pageContext.request.contextPath}/contactus">Contact Us</a></li>
        <li><a href="${pageContext.request.contextPath}/aboutus">About Us</a></li>

      </ul>
    </nav>
      <div class="auth-buttons">
 <c:choose>
  <c:when test="${not empty sessionScope.username}">
    <!-- Show Profile and Logout -->
    <button onclick="location.href='${contextPath}/userprofile'">Profile</button>
    <button onclick="location.href='${contextPath}/logout'">Logout</button>
  </c:when>
  <c:otherwise>
    <!-- Show Login and Signup -->
    <button onclick="location.href='${contextPath}/login'" style="background-color: red; color: white;">Login</button>
    <button onclick="location.href='${contextPath}/register'" style="background-color: red; color: white;" >Sign Up</button>
  </c:otherwise>
</c:choose>
  </div>
    <h1 class="brand">The Beauty Lab</h1>
    <p>Session User: ${currentUser}</p>
  </header>

</body>
<style>

body {
    font-family: 'Segoe UI', sans-serif;
    margin: 0;
    background-color: #fdf6f0;
    background-image: url('https://www.transparenttextures.com/patterns/beige-paper.png');
    background-repeat: repeat;
 
    color: #5e4633;
}

.beauty-header {
  padding: 20px 0;
  background-color: #f7e6d7;
  
  animation: fadeIn 1.5s ease-in;
}


.nav-links {
  list-style: none;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 30px;
  padding: 0;
  margin: 0;
}

.nav-links li a {
  text-decoration: none;
  font-weight: 600;
  color: #3a1d0d;
  position: relative;
  transition: color 0.3s ease;
}

.nav-links li a::after {
  content: '';
  position: absolute;
  width: 0%;
  height: 2px;
  background-color: #3a1d0d;
  left: 0;
  bottom: -5px;
  transition: width 0.3s ease;
}

.nav-links li a:hover {
  color: #a86439;
}

.nav-links li a:hover::after {
  width: 100%;
}

.brand {
	font-family: 'Italianno', cursive;
    text-align: center;
  font-size: 35px;
  color: #7b4b2b;
  animation: slideDown 1.2s ease-out;
}

button {
    margin-top: 30px;
    background: #8b5e3c;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s ease;
}

button:hover {
    background: #a67c52;
}


/* Animations */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-20px); }
  to { opacity: 1; transform: translateY(0); }
}

@keyframes slideDown {
  from { opacity: 0; transform: translateY(-50px); }
  to { opacity: 1; transform: translateY(0); }
}

/* Responsive */
@media (max-width: 768px) {
  .nav-links {
    gap: 20px;
  }

  .brand {
    font-size: 36px;
  }
}

/* Navbar Styling */
.navbar {
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  padding: 20px 40px;
  
  align-items: center;
  justify-content: space-between;
  z-index: 999;
  background: transparent;
}

.logo {
  font-size: 28px;
  color: #fff;
  font-weight: bold;
  font-family: 'Georgia', serif;
}

.nav-links {
  list-style: none;
  display: flex;
  gap: 20px;
}

.nav-links li a {
  color: #473a3a;
  text-decoration: none;
  font-size: 16px;
}

.auth-buttons {
  display: flex;
  gap: 10px;
      flex-direction: row-reverse;
}

.login-btn, .signup-btn {

  border: 2px solid #fff;
  color: #fff;
  padding: 8px 16px;
  border-radius: 20px;
  cursor: pointer;
  font-size: 14px;
  transition: all 0.3s ease;
}

.signup-btn {
  background-color: #e91e63;
  border: none;
}

.login-btn:hover,
.signup-btn:hover {
  background-color: #5bf48f;
  color: #fff;
}

</style>
</html>