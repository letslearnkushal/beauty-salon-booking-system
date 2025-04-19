<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>The Beauty Lab - Login</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/login.css"/>
	 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
	  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
</head>
<body>
 <jsp:include page="header.jsp"/>
    <div class="container">
        <div class="login-box">
            <div class="left-panel">
                <h2 class="logo">The Beauty Lab</h2>
                <h1>Login</h1>
                <form>
                    <input type="text" placeholder="Please enter your Phone or Email">
                    <input type="password" placeholder="Please enter your Password">
                    <button type="submit">Login</button>
                </form>
                <p class="forgot">Forgot your Password? <a href="#">Click here</a></p>
                <p class="create">Don’t have an account? <a href="#">Create one</a></p>
            </div>
            <div class="right-panel">
                <img src="salon.jpg.png" alt="Salon Interior"> 
        </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
