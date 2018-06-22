<%-- 
    Document   : detalle
    Created on : 20/06/2018, 10:40:06 AM
    Author     : mq12
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty producto}">
        <h1>Lo sentimos. Esta página no está disponible.</h1>
        </c:if>
        <c:forEach items="${producto.fotoses}" var="p" varStatus="status">


            <img src="/resources/images/<c:out value="${p.nombre}" />.jpg" class="img-rounded float-left" width="400" height="500" alt="Cinque Terre">          
        </c:forEach>


    </body>
    <h1> <c:out value="${producto.descripcion}" />  </h1>
</html>
