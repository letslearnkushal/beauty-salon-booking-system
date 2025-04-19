<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/userprofile.css">
</head>

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
      <a href="${pageContext.request.contextPath}/pages/usersetings.jsp"><span>⚙️</span> Settings</a>
      <a href="${pageContext.request.contextPath}/pages/login.jsp"><span>📕</span> Logout</a>
    </nav>
  </aside>

  <!-- Main content -->
  <section class="profile-main">
    <!-- Personal Info -->
    <div id="info" class="content-section active">
      <div class="profile-header">
        <div class="profile-pic small"></div>
        <div>
          <h3>Your name</h3>
          <p>Your name@gmail.com</p>
        </div>
      </div>

      <div class="profile-info">
        <div class="info-row">
          <label>Name</label>
          <span>your name</span>
        </div>
        <div class="info-row">
          <label>Email</label>
          <span>yourname@gmail.com</span>
        </div>
        <div class="info-row">
          <label>Mobile number</label>
          <span>9800000000</span>
        </div>
        <div class="info-row">
          <label>Location</label>
          <span>kathmandu</span>
        </div>
      </div>

      <button class="save-btn">Save Changes</button>
    </div>

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
        <div class="booking-card">
          <p><strong>Session with <span class="coach-name">Ozenua Oluwatobi</span></strong></p>
          <p><span class="icon">📅</span> Mon, Jan 10</p>
          <p><span class="icon">⏰</span> 12:00pm - 1:00pm</p>
          <a href="#" class="details-link">Details &gt;</a>
        </div>
      </div>
    </div>

    <!-- Settings -->
    <div id="settings" class="content-section">
      <h2>Settings</h2>
      <p>Coming soon...</p>
    </div>
  </section>
</div>
</body>
</html>