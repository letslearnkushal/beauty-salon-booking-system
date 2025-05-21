<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Service Price Management</title>
    <style>
        body {
            font-family: sans-serif;
            background: #f9f9f9;
            padding: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }
        input[type="number"] {
            width: 80px;
        }
        .btn-update {
            padding: 5px 12px;
            background-color: #2196F3;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        img {
            width: 50px;
        }
    </style>
</head>
<body>


<h2>All Services</h2>

<table border="1" width="100%">
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Price</th>
            <th>Duration (Hours)</th>
            <th>Category</th>
            <th>Image</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="s" items="${serviceList}">
            <tr>
                <td>${s.serviceId}</td>
                <td>${s.title}</td>
                <td>Rs ${s.price}</td>
                <td>${s.duration}</td>
                <td>${s.category}</td>
                <td><img src="${pageContext.request.contextPath}/resources/images/${s.imagePath}"  width="60" /></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<h3>Update Service Price</h3>

<form action="${pageContext.request.contextPath}/adminservice" method="post">
    <label for="serviceId">Select Service:</label>
    <select name="serviceId" required>
        <option value="">-- Select Service --</option>
        <c:forEach var="s" items="${serviceList}">
            <option value="${s.serviceId}">${s.title}</option>
        </c:forEach>
    </select>

    <label for="price">New Price:</label>
 <input type="number" name="price" placeholder="Enter new price e.g. 3000" required />
  
    <button type="submit">Update</button>
</form>

</body>
</html>