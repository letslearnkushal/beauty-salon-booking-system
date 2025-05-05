<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - User List</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/adminuser.css"/>
</head>
<body>
      <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="navbar">
                <div class="logo">
                    <span class="logo-icon">&#x27A4;</span>
                    <span>The Beauty Lab</span>
                </div>
            </div>
            
            <ul class="nav-menu">
                <li class="nav-item">
                    <a  href="${pageContext.request.contextPath}/adminDashboard" class="nav-link active">
                        <span class="nav-icon">&#x1F3E0;</span>
                        Dashboard
                   </a>
                </li>
                <li>
           
                     <a href="${pageContext.request.contextPath}/adminuser" class="nav-link active">
                        <span class="nav-icon">&#x1F465;</span>
                        User List
                    </a>
                </li>
            </ul>
        </div>
        
        <!-- Main Content -->
   <div class="main-content">
            <div class="navbar">
                <button class="menu-toggle">&#x2630;</button>
                <div class="user-menu">
                    <div class="notification-icon">&#x1F514;<span class="notification-badge">3</span></div>
                    <div class="user-avatar">J</div>
                    <button class="more-options">&#x22EE;</button>
                </div>
            </div>

            <div class="dashboard">
                <div class="welcome-section">
                    <h1>User List</h1>
                    <p>System is running smoothly. You have <span class="highlight">3 unread alerts</span>.</p>
                </div>

                <!-- User Table -->
                <div class="user-list-container">
                    <table class="user-list-table">
                        <thead>
                            <tr>
                                <th>User ID</th>
                                <th>Username</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${userList}">
                                <tr>
                                    <td>${user.user_id}</td>
                                    <td>${user.username}</td>
                                    <td>${user.first_name}</td>
                                    <td>${user.last_name}</td>
                                    <td>${user.email}</td>
                                    <td><button class="delete-btn">Delete</button></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>