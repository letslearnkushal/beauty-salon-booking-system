<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user profile</title>
<style>
    * {
      box-sizing: border-box;
    }

    body {
      display: flex;
      font-family: Arial, sans-serif;
      margin: 0;
    }

    .profile-container {
      display: flex;
      width: 100%;
      height: 100vh;
    }

    .profile-sidebar {
      background-color: #f0f0f0;
      width: 250px;
      padding: 20px;
    }

    .profile-sidebar h2 {
      margin-bottom: 5px;
    }

    .profile-sidebar .member-since {
      font-size: 12px;
      color: #007BFF;
      margin-bottom: 20px;
    }

    .profile-pic {
      width: 100px;
      height: 100px;
      background-color: #ccc;
      border-radius: 50%;
      margin-bottom: 10px;
    }

    .profile-nav a {
      display: block;
      padding: 10px;
      margin: 10px 0;
      text-decoration: none;
      color: black;
      background: #e0e0e0;
      border-radius: 5px;
    }

    .profile-nav a.active {
      background: #add8ff;
      font-weight: bold;
    }

    .profile-main {
      flex-grow: 1;
      background-color: #1e1e1e;
      color: white;
      padding: 30px;
    }

    /* Booking section tabs */
.booking-tabs {
  display: flex;
  gap: 20px;
  margin: 15px 0;
  border-bottom: 1px solid #ccc;
}

.tab-btn {
  background: none;
  border: none;
  padding: 10px 0;
  font-size: 16px;
  cursor: pointer;
  color: #333;
  border-bottom: 2px solid transparent;
}

.tab-btn.active {
  color: #f56a05;
  font-weight: bold;
  border-color: #f56a05;
}

/* Booking cards like in the image */
.white-card {
  background: #f9f9f9;
  color: #000;
  border-radius: 12px;
  padding: 15px;
  margin: 15px 0;
  box-shadow: 0px 1px 3px rgba(0,0,0,0.1);
}

.details-link.orange {
  color: #f56a05;
  text-decoration: none;
  font-weight: bold;
  display: inline-block;
  margin-top: 5px;
}
    
/* Booking cards like in the image */
.white-card {
  background: #f9f9f9;
  color: #000;
  border-radius: 12px;
  padding: 15px;
  margin: 15px 0;
  box-shadow: 0px 1px 3px rgba(0,0,0,0.1);
}

.details-link.orange {
  color: #f56a05;
  text-decoration: none;
  font-weight: bold;
  display: inline-block;
  margin-top: 5px;
}
.booking-card{
 background-color: #f9f9f9;
 color: black;
 border-radius: 10px;
 margin: 10px;
 padding: 10px;
 
}

  </style>
</head>
<body>

<div class="profile-container">
  <!-- Sidebar -->
  <aside class="profile-sidebar">
    <div class="profile-pic"></div>
    <h2>Name Surname</h2>
    <p class="member-since">MEMBER SINCE 2025</p>

    <nav class="profile-nav">
      <a href="${pageContext.request.contextPath}/pages/userprofile.jsp"><span>👤</span> Personal Info</a>
      <a href="${pageContext.request.contextPath}/pages/userbookinghistory.jsp"><span>⏰</span> Booking History</a>
      <a href="${pageContext.request.contextPath}/pages/usersettings.jsp"><span>⚙️</span> Settings</a>
      <a href="${pageContext.request.contextPath}/pages/login.jsp"><span>📕</span> Logout</a>
    </nav>
  </aside>

  <!-- Main content -->
  <section class="profile-main">
      <!-- Booking History -->
    <div id="history" class="content-section">
      <h2>Booking History</h2>
      <div class="booking-history">
        <div class="booking-card">
          <p><strong>Session with <span class="coach-name">Ozenua Oluwatobi</span></strong></p>
          <p><span class="icon">📅</span> Mon, Jan 10</p>
          <p><span class="icon">⏰</span> 12:00pm - 1:00pm</p>
          <a href="#" class="details-link">Details &gt;</a>
        </div>
        
      </div>
    </div>

    <!-- Settings -->
    <div id="history" class="content-section">
   <div class="booking-card">
          <p><strong>Session with <span class="coach-name">Ozenua Oluwatobi</span></strong></p>
          <p><span class="icon">📅</span> Mon, Jan 10</p>
          <p><span class="icon">⏰</span> 12:00pm - 1:00pm</p>
          <a href="#" class="details-link">Details &gt;</a>
        </div>
    </div>

  </section>
</div>
</body>
</html>