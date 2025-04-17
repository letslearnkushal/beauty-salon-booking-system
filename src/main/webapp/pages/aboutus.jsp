<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/aboutus.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

<div class="aboutus-wrapper">

    <!-- 1. HEADING -->
    <h1 class="main-heading">About Us</h1>

    <!-- 2. CENTERED QUOTE -->
    <div class="centered-quote">
        “Welcome to The Beauty Lab – Your Glow Starts Here”
    </div>

    <!-- 3. SHORT DESCRIPTION -->
    <p class="short-description">
        Step into The Beauty Lab and let our expert team craft a personalized experience<br>
        that leaves you feeling radiant and confident.
    </p>

    <!-- 4. TWO-COLUMN SECTION: IMAGE LEFT + QUOTE + PARAGRAPH RIGHT -->
    <div class="two-column-section">
        <div class="column-left">
            <img src="bikram.jpg" alt="Salon Image">
        </div>
        <div class="column-right">
            <div class="quote">“The Beauty Lab: A Passion for Perfection”</div>
            <p>
                Established in 2019, The Beauty Lab was born from a vision to redefine beauty care.
                We blend cutting-edge techniques with a love for artistry, creating a space
                where every client feels like their best self.From bold transformations to subtle
                enhancements, we’re here to experiment, innovate, and celebrate you.
            </p>
        </div>
    </div>

    <!-- 5. SERVICE BLOCK + IMAGE RIGHT -->
    <div class="service-row">
        <div class="service-left">
            <h3>Shine Brighter with Our Services</h3>
            <p>Innovative treatments for stunning results,<br>your beauty is perfected by our hands.</p>

            <div class="services-columns">
                <ul>
                    <li>Mesotherapy</li>
                    <li>Acupuncture</li>
                    <li>Nails</li>
                    <li>Facial Treatments</li>
                </ul>
                <ul>
                    <li>Hyaluronic Acid</li>
                    <li>Dermatology</li>
                    <li>Natural Make-up</li>
                    <li>Hyaluronic Fillers</li>
                </ul>
                <ul>
                    <li>Brows</li>
                    <li>Face Massage</li>
                    <li>Cosmetology</li>
                    <li>Massage</li>
                </ul>
            </div>
        </div>
        <div class="service-right">
            <img src="bikram.jpg" alt="Towel and Candle">
        </div>
    </div>

    <!-- 6. STATS ROW (4 BLOCKS) -->
    <div class="stats-section">
        <div><h2>5+</h2><p>Years of Experience</p></div>
        <div><h2>4K+</h2><p>Happy Clients</p></div>
        <div><h2>50+</h2><p>Workers Employed</p></div>
        <div><h2>10+</h2><p>Awards Won</p></div>
    </div>

    <!-- 7. TEAM SECTION -->
    <div class="team-section">
        <h2>Our Team</h2>
        <div class="team-grid">
            <div class="team-card">
                <img src="bikram.jpg" alt="Bikram">
                <h4>Bikram Shrestha</h4>
                <p>Vice-chair person</p>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="team-card">
                <img src="kushal.jpeg" alt="Kushal">
                <h4>Kushal Shrestha</h4>
                <p>CEO</p>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="team-card">
                <img src="kushal.jpeg" alt="Khushi">
                <h4>Khushi Karanjit</h4>
                <p>Founder</p>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="team-card">
                <img src="yuri.jpeg" alt="Yuri">
                <h4>Yuri Dangol</h4>
                <p>Co-founder</p>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="team-card">
                <img src="sophie.jpeg" alt="Sophie">
                <h4>Sophie Thapa</h4>
                <p>Chair person</p>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>

</div>

</body>
</html>