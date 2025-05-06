<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.beauty.model.Appointment" %>
<%@ page import="com.beauty.service.AppointmentService" %>
<%@ page import="java.util.List" %>

<%
    AppointmentService appointmentService = new AppointmentService();
    List<Appointment> allAppointments = appointmentService.getAllAppointments();
    request.setAttribute("appointments", allAppointments);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Appointments</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/My Appointment.css"/>
</head>
<body>
<div class="appointment-container">
    <h1>All Appointments</h1>

    <c:choose>
        <c:when test="${not empty appointments}">
            <c:forEach var="appointment" items="${appointments}">
               <div class="card">
    <div class="row">
        <span><strong>Appointment ID:</strong></span>
        <span>${appointment.appointmentId}</span>
    </div>
    <div class="row">
        <span><strong>Service:</strong></span>
        <span>${appointment.serviceName}</span>
    </div>
    <div class="row">
        <span><strong>Date:</strong></span>
        <span>${appointment.date}</span>
    </div>
    <div class="row">
        <span><strong>Time:</strong></span>
        <span>${appointment.time}</span>
    </div>
    <div class="row">
        <span><strong>Stylist:</strong></span>
        <span>${appointment.stylist}</span>
    </div>
</div>
                <br/>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <p>No appointments found.</p>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>
