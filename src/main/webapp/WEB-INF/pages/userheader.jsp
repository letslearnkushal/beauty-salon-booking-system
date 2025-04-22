<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.beauty-header {
    width: 100%;
    background-color: #f2e3d5;
    padding: 15px 0;
}

.header-container {
    display: flex;
    align-items: center;
    justify-content: space-between;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.navbar {
    flex-grow: 1;
    display: flex;
    justify-content: center;
}

.nav-links {
    display: flex;
    list-style: none;
    padding: 0;
    margin: 0;
    gap: 20px;
}

.nav-links li a {
    text-decoration: none;
    color: #333;
    font-weight: 500;
}

.profile-container {
    margin-left: auto;
}

.profile-link {
    display: flex;
    align-items: center;
    gap: 5px;
    text-decoration: none;
    color: white;
    background-color: #d44d84;
    padding: 8px 15px;
    border-radius: 25px;
    transition: background-color 0.3s;
}

.profile-link:hover {
    background-color: #b63e6f;
}

.profile-icon {
    width: 18px;
    height: 18px;
    stroke: white;
}
</style>
</head>
<body>
<header class="beauty-header">
    <div class="header-container">
        <nav class="navbar">
            <ul class="nav-links">
                <li><a href="${pageContext.request.contextPath}/pages/home.jsp">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/pages/contact-us.jsp">Contact Us</a></li>
                <li><a href="${pageContext.request.contextPath}/pages/about-us.jsp">About Us</a></li>
                <li><a href="${pageContext.request.contextPath}/pages/services.jsp">Services</a></li>
                <li><a href="${pageContext.request.contextPath}/pages/booking.jsp">Booking</a></li>
            </ul>
        </nav>
        
        <div class="profile-container">
            <a href="${pageContext.request.contextPath}/userprofile" class="profile-link">
                <svg class="profile-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                    <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 11c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z" />
                </svg>
                <span>Profile</span>
            </a>
        </div>
    </div>
</header>
</body>
</html>