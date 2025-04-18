<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="UTF-8">
<title>My Appointment</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/My Appointment.css"/>
</head>
<body>
<div class="appointment-container">
    <h1>My Appointment</h1>

    <div class="card">
      <div class="row">
        <div>
          <strong>20th April</strong><br>
          at Beauty Lab
        </div>
        <div><strong>Starting at 5:00 PM</strong></div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div>Haircut/Spa</div>
        <div>Rs.5000</div>
      </div>
      <div class="row">
        <div>Nails</div>
        <div>Rs.2000</div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div><strong>Total</strong></div>
        <div><strong>Rs.7000</strong></div>
        </div>
      <div class="row">
        <div>Deposit due now</div>
        <div>Rs.2000</div>
      </div>
      <div class="row">
        <div>Payment due on arrival</div>
        <div>Rs.5000</div>
      </div>
    </div>

    <button class="btn-booking">Complete Booking</button>
  </div>
</body>
</html>