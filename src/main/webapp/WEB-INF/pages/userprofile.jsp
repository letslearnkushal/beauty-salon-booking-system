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
      <a href="${pageContext.request.contextPath}/pages/usersettings.jsp"><span>⚙️</span> Settings</a>
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
          <span><input type="text" class="form-control"  value="your name"></span>
        </div>
        <div class="info-row">
          <label>Email</label>
          <span><input type="text" class="form-control"  value="yourname@gmail.com"></span>
        </div>
        <div class="info-row">
          <label>Mobile number</label>
          <span><input type="text" class="form-control"  value="9800000000"></span>
        </div>
        <div class="info-row">
          <label>Location</label>
          <span><input type="text" class="form-control"  value="Kathmandu"></span>
        </div>
      </div>

      <button class="save-btn">Save Changes</button>
    </div>

    

    
  </section>
</div>
</body>
</html>