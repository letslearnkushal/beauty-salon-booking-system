<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
</head>
<body>
<header>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Book Appointment</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <section class="booking">
            <h2>Book Your Appointment</h2>
            <form id="appointment-form">
                <label for="name">Your Name:</label>
                <input type="text" id="name" required>

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" required>

                <label for="service">Choose Service:</label>
                <select id="service" required>
                    <option value="">Select Service</option>
                    <option value="haircut">Haircut</option>
                    <option value="facial">Facial</option>
                    <option value="massage">Massage</option>
                </select>

                <label for="date">Appointment Date:</label>
                <input type="date" id="date" required>

                <label for="time">Appointment Time:</label>
                <input type="time" id="time" required>

                <button type="submit">Book Appointment</button>
            <p>helloo</p>
            </form>
        </section>
    </main>

    <footer>
        <p>Contact Us: info@beautyparlor.com</p>
    </footer>

</body>
</html>