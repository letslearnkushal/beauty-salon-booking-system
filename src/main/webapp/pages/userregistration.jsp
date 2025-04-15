<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/userregistration.css"/>
</head>
<body>

    <div class="form-wrapper">
        <div class="form-container">

            <!-- Left Side: All Text and Form Fields -->
            <div class="form-left">
                <h1 class="title">The Beauty Lab</h1>
                <h2 class="subtitle">User Registration</h2>
                <p class="instruction">Please kindly fill the Registration form</p>

                <form action="RegisterServlet" method="post" onsubmit="return validateForm();">

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

                    <!-- Submit Button -->
                    <div class="input-box">
                        <button type="submit" class="btn">Register </button>
                    </div>
                </form>
            </div>

            <!-- Right Side: Full Height Image -->
            <div class="form-right">
                <img src="registrationimage.jpg" alt="Beauty Lab">
            </div>

        </div>
    </div>

    <script src="script.js"></script>

</body>
</html>