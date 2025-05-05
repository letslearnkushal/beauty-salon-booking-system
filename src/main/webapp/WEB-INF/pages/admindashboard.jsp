<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
</head>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/admindashboard.css"/>
<body>
 
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
                    <a  href="${pageContext.request.contextPath}/admindashboard" class="nav-link active">
                        <span class="nav-icon">&#x1F3E0;</span>
                        Dashboard
                   </a>
                </li>
                <li>
           
                     <a href="${pageContext.request.contextPath}/adminuser" class="nav-link active">
                        <span class="nav-icon">&#x1F3E0;</span>
                        User List
                    </a>
                </li>
            </ul>
        </div>
        
        <!-- Main Content -->
        <div class="main-content">
            <!-- Top Navigation Bar -->
            <div class="navbar">
                <button class="menu-toggle">&#x2630;</button>
                
                <div class="user-menu">
                    <div class="notification-icon">
                        &#x1F514;
                        <span class="notification-badge">3</span>
                    </div>
                    <div class="user-avatar">
                        J
                    </div>
                    <button class="more-options">&#x22EE;</button>
                </div>
            </div>
            
            <!-- Dashboard Content -->
            <div class="dashboard">
                <!-- Welcome Section -->
                <div class="welcome-section">
                    <h1 class="welcome-heading">Welcome your name</h1>
                    <p class="welcome-text">All systems are running smoothly! You have <span class="highlight">3 unread alerts!</span></p>
                </div>
                
                <!-- Weather Section - Simplified 
                <div class="weather-section">
                    <div class="weather-info">
                        <div class="weather-temp">
                            <span class="weather-icon">&#x2600;</span>31°C
                        </div>
                        <div class="weather-location">Chicago</div>
                        <div class="weather-sublocation">Illinois</div>
                    </div>
                </div>
                -->
                
                <!-- Stats Grid -->
                <div class="stats-grid">
                    <div class="stats-card blue">
                        <div class="stats-title">Today's Bookings</div>
                        <div class="stats-value">4006</div>
                       
                    </div>
                    
                    <div class="stats-card purple">
                        <div class="stats-title">Total Bookings</div>
                        <div class="stats-value">61344</div>
                       
                    </div>
                    
                    <div class="stats-card blue">
                        <div class="stats-title">Number of Appoinments</div>
                        <div class="stats-value">34040</div>
                       
                    </div>
                    
                    <div class="stats-card coral">
                        <div class="stats-title">Number of Clients</div>
                        <div class="stats-value">47033</div>
                      
                    </div>
                </div>
                
                <!-- Detail Sections -->
                <div class="detail-sections">
                    <!-- Order Details -->
                    <div class="detail-card">
                        <div class="detail-header">
                            <h3 class="detail-title">Order Details</h3>
                            <div class="detail-badge">&#x26A1;</div>
                        </div>
                        
                        <p class="detail-description">
                            The total number of sessions within the date range. It is the period time a user is actively engaged with your website, page or app, etc.
                        </p>
                        
                        <div class="detail-stats">
                            <div class="stats-item">
                                <div class="stats-item-value">12.3k</div>
                                <div class="stats-item-label">Order value</div>
                            </div>
                            
                            <div class="stats-item">
                                <div class="stats-item-value">14k</div>
                                <div class="stats-item-label">Orders</div>
                            </div>
                            
                            <div class="stats-item">
                                <div class="stats-item-value">71.56%</div>
                                <div class="stats-item-label">Users</div>
                            </div>
                            
                            <div class="stats-item">
                                <div class="stats-item-value">34040</div>
                                <div class="stats-item-label">Downloads</div>
                            </div>
                        </div>
                        
                        <div class="chart-placeholder">
                            Line Chart Visualization
                        </div>
                    </div>
                    
                    <!-- Sales Report -->
                    <div class="detail-card">
                        <div class="detail-header">
                            <h3 class="detail-title">Sales Report</h3>
                            <a href="#" class="view-all-link">View all</a>
                        </div>
                        
                        <p class="detail-description">
                            The total number of sessions within the date range. It is the period time a user is actively engaged with your website, page or app, etc.
                        </p>
                        
                        <div class="chart-placeholder">
                            Bar Chart Visualization
                        </div>
                        
                        <div class="chart-legend">
                            <div class="legend-item">
                                <div class="legend-color blue"></div>
                                <span>Offline Sales</span>
                            </div>
                            <div class="legend-item">
                                <div class="legend-color purple"></div>
                                <span>Online Sales</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>

    </script>
</body>
</html>