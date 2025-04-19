<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>Selected Services:</p>
<ul>
<%
    String[] services = request.getParameterValues("services");
    if (services != null) {
        for (String s : services) {
%>
            <li><%= s %></li>
<%
        }
    } else {
%>
    <li>No services selected</li>
<%
    }
%>
</ul>

<p>Stylist: <%= request.getParameter("stylist") %></p>
<p>Date: <%= request.getParameter("date") %></p>
<p>Time: <%= request.getParameter("time") %></p>

<p><strong>Selected Stylists:</strong></p>
<ul>
    <li>Makeup Stylist: <%= request.getParameter("stylist_makeup") %></li>
    <li>Hair Stylist: <%= request.getParameter("stylist_hair") %></li>
    <li>Nail Stylist: <%= request.getParameter("stylist_nail") %></li>
    <li>Cosmetologist: <%= request.getParameter("stylist_cosmo") %></li>
    <li>Spa Specialist: <%= request.getParameter("stylist_spa") %></li>
</ul>

</body>
</html>