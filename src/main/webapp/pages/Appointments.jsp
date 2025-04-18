<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Appointments</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/Appointments.css"/>
</head>
<body>
<div class="container">
    <h1>Appointments</h1>

    <div class="toggle-container">
      <div class="toggle-buttons">
        <button class="tab active">Upcoming</button>
        <button class="tab">Previous</button>
      </div>
    </div>

    <div class="appointment-message">
      <p><strong>You have no upcoming appointments</strong></p>
    </div>

    <div class="book-now">
      <button>Book now</button>
    </div>
  </div>
</body>
</html>