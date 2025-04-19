<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="UTF-8">
<title>The Beauty Lab - Book Appointment</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/appointment.css" />
</head>
<body>
<div class="container">
    <div class="form-section">
      <h2>The Beauty Lab</h2>
      <h1>Book appointment</h1>
      <form>
        <div class="form-row">
          <div class="form-group">
            <label>First Name :</label>
            <input type="text" placeholder="First name">
          </div>
          <div class="form-group">
            <label>Last Name :</label>
            <input type="text" placeholder="First name">
          </div>
        </div>
        <div class="form-row">
          <div class="form-group">
            <label>Email</label>
            <input type="email" placeholder="Email">
          </div>
          <div class="form-group">
            <label>Phone</label>
            <input type="tel" placeholder="Phone">
          </div>
        </div>
        <div class="form-row">
          <div class="form-group">
          <label>Phone</label>
            <input type="tel" placeholder="Phone">
          </div>
          <div class="form-group">
            <label>Time</label>
            <input type="time">
          </div>
        </div>
        <div class="form-row">
          <div class="form-group full-width">
            <label>Service</label>
            <select>
              <option>Service</option>
              <option>Facial</option>
              <option>Makeup</option>
              <option>Massage</option>
            </select>
          </div>
        </div>
        <button type="submit">Send message</button>
      </form>
    </div>
    <div class="image-section">
      <img src="image.png.jpeg" alt="Salon Reception">
    </div>
  </div>
          
</body>
</html>