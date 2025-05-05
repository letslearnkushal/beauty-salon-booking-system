<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
    
<!DOCTYPE html>
<html lang ="en">
<head>
<meta charset="UTF-8">
<title>Services and Prices</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/service.css" />
	        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
          <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="services-container">
    <h1 class="title">Services and prices</h1>
<c:forEach var="service" items="${services}" varStatus="loop">
    <c:if test="${service.category ne lastCategory}">
        <c:if test="${not empty lastCategory}">
                </ul>
            </div>
            <div class="service-image">
                <img src="${pageContext.request.contextPath}/resources/images/${lastImage}" alt="${lastCategory}">
            </div>
        </div>
        </c:if>

        <div class="service-row">
            <div class="service-box">
                <h2>${service.category}</h2>
                <ul>
        <c:set var="lastCategory" value="${service.category}" />
        <c:set var="lastImage" value="${service.imagePath}" />
    </c:if>

    <li>${service.name}<span>${service.price}</span></li>

    <!-- Now we use loop.last to detect last iteration -->
    <c:if test="${loop.last}">
            </ul>
        </div>
        <div class="service-image">
            <img src="${pageContext.request.contextPath}/resources/images/${service.imagePath}" alt="${service.category}">
        </div>
    </div>
    </c:if>
</c:forEach>

<!-- This is the main header of the page 
    <div class="service-row">
     
      <div class="service-box">
        <h2>Make up</h2>
        <ul>
          <li>Daily make up<span>5000</span></li>
          <li>Night make up<span>7000</span></li>
          <li>Bridal make up<span>15000</span></li>
          <li>Occasion make up<span>10000</span></li>
      
        </ul>
      </div>
       <div class="service-image">
        <img src="${pageContext.request.contextPath}/resources/images/makeup.png" alt="Makeup">
      </div>
    </div>

    <div class="service-row">
      <div class="service-box">
        <h2>Hair styling</h2>
        <ul>
          <li>Simple haircut<span>2000</span></li>
          <li>Hair Styling<span>3500</span></li>
          <li>Full hair color<span>4500</span></li>
          <li>Protein treatment<span>5000</span></li>
         
        </ul>
      </div>
      <div class="service-image">
        <img  src="${pageContext.request.contextPath}/resources/images/hair.png" alt="Hair Styling">
      </div>
    </div>
    
    

    <div class="service-row">
 
      <div class="service-box">
        <h2>Nail care</h2>
        <ul>
          <li>Manicure<span>2500</span></li>
          <li>Pedicure<span>2500</span></li>
          <li>French manicure<span>3500</span></li>
          <li>Manicure & gel nails<span>5500</span></li>
         
        </ul>
      </div>
           <div class="service-image">
        <img src="${pageContext.request.contextPath}/resources/images/nails.png" alt="Nail Care">
      </div>
    </div>

    <div class="service-row">
      <div class="service-box">
        <h2>Cosmetology</h2>
        <ul>
          <li>Botox<span>15000</span></li>
          <li>Chemical Peel<span>12000</span></li>
          <li>Laser Skin Resurfacing<span>15000</span></li>
          <li>Laser Hair Removal<span>20000</span></li>
        </ul>
      </div>
      <div class="service-image">
        <img src="${pageContext.request.contextPath}/resources/images/cosmetology.png"alt="Cosmetology">
      </div>
    </div>

    <div class="service-row">

      <div class="service-box">
        <h2>SPA procedures</h2>
        <ul>
          <li>Body scrub & smoothing<span>2500</span></li>
          <li>Indulge & relax<span>2500</span></li>
          <li>Slimming & drainage<span>3000</span></li>
          <li>Foot revive treatment<span>3500</span></li>
        </ul>
      </div>
            <div class="service-image">
        <img src="${pageContext.request.contextPath}/resources/images/spa.jpg" alt="SPA">
      </div>
    </div>
  </div>
  -->
  <jsp:include page="footer.jsp"/>
</body>
</html>