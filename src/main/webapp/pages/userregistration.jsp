<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/userregistration.css"/>
<link href="https://fonts.googleapis.com/css2?family=Italianno&display=swap" rel="stylesheet">
</head>
<body>

<div class="form-wrapper">
    <div class="form-container">
        <!-- Left Side: All Text and Form Fields -->
        <div class="form-left">
            <h1 class="title">The Beauty Lab</h1>
            <h2 class="subtitle">User Registration</h2>
            <p class="instruction">Please kindly fill the Registration form</p>
            <form action="RegisterServlet" method="post" onsubmit="return validateForm();" name="registrationForm">
                <!-- First + Last Name -->
                <div class="row">
                    <div class="input-box">
                        <label for="firstName">First Name :</label>
                        <input type="text" id="firstName" name="firstName" placeholder="First name" required>
                    </div>
                    <div class="input-box">
                        <label for="lastName">Last Name :</label>
                        <input type="text" id="lastName" name="lastName" placeholder="Last name" required>
                    </div>

                </div>
                <!-- Email -->
                <div class="input-box">
                    <label for="email">Email :</label>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                </div>
                <!-- Phone -->
                <div class="input-box">
                    <label for="phone">Phone No :</label>
                    <input type="tel" id="phone" name="phone" placeholder="Phone number" required>
                </div>
                <!-- Address -->
                <div class="input-box">
                    <label for="address">Address :</label>
                    <textarea id="address" name="address" placeholder="Your address" required></textarea>
                </div>
              
                <div class="input-box">
                    <label for="phone">Username :</label>
                    <input type="text" id="username" name="phone" placeholder="Username" required>
                </div>
                <div class="input-box">
                    <label for="phone">Password:</label>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <div class="input-box">
                    <label for="phone">Retype-Password :</label>
                    <input type="password" id="password" name="password" placeholder="Re-Password" required>
                </div>
                  <!-- Submit Button -->
                <div class="input-box">
                    <button type="submit" class="btn">Register </button>
                </div>
            </form>
        </div>
        <!-- Right Side: Full Height Image -->
        <div class="form-right">
            <img src="registrationimage.jpg" alt="Beauty Lab">
=======

                    <!-- Address -->
                    <div class="input-box">
                        <label for="address">Address :</label>
                        <textarea id="address" name="address" placeholder="Your address" required></textarea>
                    </div>

                    <!-- Submit Button -->
                    <div class="input-box">
                        <button type="submit" class="button">Register </button>
                    </div>
                </form>
            </div>

            <!-- Right Side: Full Height Image -->
            <div class="form-right">
                <img src="registrationimage.jpg" alt="Beauty Lab">
            </div>


        </div>
    </div>
</div>
  

</body>
</html>