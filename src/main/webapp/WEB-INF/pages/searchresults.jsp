<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Services</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }

    h2 {
        color: #333;
        margin-bottom: 10px;
    }

    p {
        color: #777;
    }

    ul {
        list-style-type: none;
        padding: 0;
    }

    li {
        background-color: #fff;
        padding: 10px;
        margin-bottom: 8px;
        border-radius: 4px;
        box-shadow: 0 1px 3px rgba(0,0,0,0.1);
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
                        <li>${item}</li>
                    </c:forEach>
                </ul>
            </c:otherwise>
        </c:choose>
    </c:if>

    <a href="index.jsp">Back to Home</a>
</body>
</html>