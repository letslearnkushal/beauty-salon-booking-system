<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Services</title>
    <style>
.service-card {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 15px 20px;
    margin-bottom: 20px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    transition: box-shadow 0.3s ease;
}

.service-card:hover {
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.service-info {
    flex: 1;
}

.service-info h3 {
    margin-top: 0;
    font-size: 20px;
    color: #333;
}

.service-info p {
    margin: 6px 0;
    color: #555;
    font-size: 14px;
}

.book-button {
    display: inline-block;
    margin-top: 20px;
    padding: 8px 16px;
    background-color: #007bff;
    color: white;
    border-radius: 5px;
    text-decoration: none;
    font-size: 14px;
    transition: background-color 0.3s;
}

.book-button:hover {
    background-color: #0056b3;
}

.service-image img {
    width: 150px;
    height: auto%;
    border-radius: 6px;
    object-fit: cover;
    margin-left: 20px;
}
@media (max-width: 600px) {
    .service-card {
        flex-direction: column;
        text-align: left;
    }
    .service-image img {
        margin: 10px 0 0 0;
        width: 100%;
        max-width: 300px;
    }
}


    a {
        display: inline-block;
        margin-top: 15px;
        padding: 8px 12px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 4px;
    }

    a:hover {
        background-color: #0056b3;
    }
</style>
    
</head>

<body>

    <h1>Search Services</h1>

<form method="get" action="search">
    <input type="text" name="query" value="${param.query}" placeholder="Enter service name" />
    <input type="submit" value="Search" />
</form>

<c:if test="${not empty param.query}">
    <h2>Results for "${param.query}":</h2>

    <c:choose>
        <c:when test="${empty results}">
            <p>No services found.</p>
        </c:when>
        <c:otherwise>
           <ul>
			    <c:forEach var="item" items="${results}">
			       <div class="service-card">
				    <div class="service-info">
				        <h3>${item.title}</h3>
				        <p><strong>Category:</strong> ${item.category}</p>
				        <p><strong>Duration:</strong> ${item.duration} hours</p>
				        <p><strong>Price:</strong> Rs ${item.price}</p>
				        <a href="${pageContext.request.contextPath}/" class="book-button">Book Now</a>
				    </div>
				    <div class="service-image">
				        <img src="${pageContext.request.contextPath}/resources/images/${item.imagePath}" alt="${item.title}" />
				    </div>
				</div>
			    </c:forEach>
</ul>

        </c:otherwise>
    </c:choose>
</c:if>

    <a href="index.jsp">Back to Home</a>
</body>
</html>