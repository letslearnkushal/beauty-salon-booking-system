<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String[] selectedServices = request.getParameterValues("services");
    boolean showMakeupError = false;
    boolean showHairError = false;
    boolean showNailError = false;
    boolean showCosmoError = false;
    boolean showSpaError = false;

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        if (selectedServices != null) {
            java.util.List<String> services = java.util.Arrays.asList(selectedServices);

            if (services.stream().anyMatch(s -> s.toLowerCase().contains("make up")) && request.getParameter("stylist_makeup") == null) {
                showMakeupError = true;
            }
            if (services.stream().anyMatch(s -> s.toLowerCase().contains("hair")) && request.getParameter("stylist_hair") == null) {
                showHairError = true;
            }
            if (services.stream().anyMatch(s -> s.toLowerCase().contains("nail") || s.toLowerCase().contains("manicure") || s.toLowerCase().contains("pedicure")) && request.getParameter("stylist_nail") == null) {
                showNailError = true;
            }
            if (services.stream().anyMatch(s -> s.toLowerCase().contains("botox") || s.toLowerCase().contains("chemical") || s.toLowerCase().contains("laser")) && request.getParameter("stylist_cosmo") == null) {
                showCosmoError = true;
            }
            if (services.stream().anyMatch(s -> s.toLowerCase().contains("scrub") || s.toLowerCase().contains("relax") || s.toLowerCase().contains("slimming") || s.toLowerCase().contains("foot")) && request.getParameter("stylist_spa") == null) {
                showSpaError = true;
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Book Appointment - The Beauty Lab</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/booking.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Italianno&display=swap" rel="stylesheet">
    
</head>
<body>

<header>
    <div class="nav">
        <div class="logo">The Beauty Lab</div>
        <ul class="nav-links">
            <li><a href="#">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">My Appointments</a></li>
            <li><a href="#">Contact Us</a></li>
        </ul>
    </div>
</header>


	<main>
	<h1 class="site-title">Book Appointment</h1>

	<form method="post">

	    <div class="grid-layout-custom">
	
	        <!-- Makeup -->
	        <div class="box makeup">
	            <h3>Makeup</h3>
	            <label><input type="checkbox" name="services" value="Daily make up"> Daily make up</label>
	            <label><input type="checkbox" name="services" value="Night make up"> Night make up</label>
	            <label><input type="checkbox" name="services" value="Bridal make up"> Bridal make up</label>
	            <label><input type="checkbox" name="services" value="Occasion make up"> Occasion make up</label>
	            <label><input type="checkbox" name="services" value="Television make up"> Television make up</label>
	            <h4>Stylist</h4>
	            
	            <label><input type="radio" name="stylist_makeup" value="Samantha"> Samantha</label>
	            <label><input type="radio" name="stylist_makeup" value="Olivia"> Olivia</label>
	            <% if (showMakeupError) { %><p style="color:red;">Please select a makeup stylist.</p><% } %>
	        </div>
	
	        <!-- Hair -->
	        <div class="box hair">
	            <h3>Hair</h3>
	            <label><input type="checkbox" name="services" value="Simple Haircut"> Simple Haircut</label>
	            <label><input type="checkbox" name="services" value="Hair Styling"> Hair Styling</label>
	            <label><input type="checkbox" name="services" value="Full Hair Color"> Full Hair Color</label>
	            <label><input type="checkbox" name="services" value="Protein Treatment"> Protein Treatment</label>
	            <label><input type="checkbox" name="services" value="Hair Mask"> Hair Mask</label>
	            <h4>Stylist</h4>
	            
	            <label><input type="radio" name="stylist_hair" value="Emily"> Emily</label>
	            <label><input type="radio" name="stylist_hair" value="Riya"> Riya</label>
	            <% if (showHairError) { %><p style="color:red;">Please select a hair stylist.</p><% } %>
	        </div>
	
	        <!-- Nails -->
	        <div class="box nails">
	            <h3>Nails</h3>
	            <label><input type="checkbox" name="services" value="Manicure"> Manicure</label>
	            <label><input type="checkbox" name="services" value="Pedicure"> Pedicure</label>
	            <label><input type="checkbox" name="services" value="French Manicure"> French Manicure</label>
	            <label><input type="checkbox" name="services" value="Gel nails"> Gel nails</label>
	            <label><input type="checkbox" name="services" value="Gel Reapplication"> Gel Reapplication</label>
	            <h4>Stylist</h4>
	           
	            <label><input type="radio" name="stylist_nail" value="Jessie"> Jessie</label>
	            <label><input type="radio" name="stylist_nail" value="Tina"> Tina</label>
	            <% if (showNailError) { %><p style="color:red;">Please select a nail stylist.</p><% } %>
	        </div>
	
	        <!-- Cosmetology -->
	        <div class="box cosmetology">
	            <h3>Cosmetology</h3>
	            <label><input type="checkbox" name="services" value="Botox"> Botox</label>
	            <label><input type="checkbox" name="services" value="Chemical Peel"> Chemical Peel</label>
	            <label><input type="checkbox" name="services" value="Laser Skin Resurfacing"> Laser Skin Resurfacing</label>
	            <label><input type="checkbox" name="services" value="Laser Hair Removal"> Laser Hair Removal</label>
	            <h4>Stylist</h4>
	            
	            <label><input type="radio" name="stylist_cosmo" value="Dr. Mira" > Dr. Mira</label>
	            <label><input type="radio" name="stylist_cosmo" value="Dr. Laxmi"> Dr. Laxmi</label>
	            <% if (showCosmoError) { %><p style="color:red;">Please select a cosmetologist.</p><% } %>
	        </div>
	
	        <!-- Spa -->
	        <div class="box spa">
	            <h3>Spa</h3>
	            <label><input type="checkbox" name="services" value="Body scrub & smoothing"> Body scrub & smoothing</label>
	            <label><input type="checkbox" name="services" value="Indulge & relax"> Indulge & relax</label>
	            <label><input type="checkbox" name="services" value="Slimming & drainage"> Slimming & drainage</label>
	            <label><input type="checkbox" name="services" value="Foot revive treatment"> Foot revive treatment</label>
	            <h4>Stylist</h4>
	      
	            <label><input type="radio" name="stylist_spa" value="Mina" > Mina</label>
	            <label><input type="radio" name="stylist_spa" value="Luna"> Luna</label>
	            <% if (showSpaError) { %><p style="color:red;">Please select a spa stylist.</p><% } %>
	        </div>
	    </div>
	
	    <section class="booking-form">
	        <h2>Select Date & Time</h2>
	        <label for="date">Date</label>
	        <input type="date" id="date" name="date" required>
	
	        <label for="time">Time</label>
	        <input type="time" id="time" name="time" required>
	
	        <button type="submit">Confirm Booking</button>
	    </section>
	</form>
	
	</main>
	
	<footer>
	    <p>&copy; 2025 The Beauty Lab | Connect With Us</p>
	</footer>
	
	</body>
	
	
	</html>