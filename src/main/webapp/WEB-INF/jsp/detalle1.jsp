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
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.6/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.6/js/uikit.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.6/js/uikit-icons.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty producto}">
        <h1>Lo sentimos. Esta página no está disponible.</h1>
        </c:if>
         <img src="/resources/images/<c:out value="${producto.codigo}" />.png" alt="">
        <c:forEach items="${producto.fotoses}" var="p" varStatus="status">


            <img src="/resources/images/<c:out value="${p.nombre}" />.png" class="img-rounded float-left" width="400" height="500" alt="Cinque Terre">          
        </c:forEach>
       <h3> Nombre: <c:out value="${producto.nombre}" />  </h3>
     <h3>Descripción: <c:out value="${producto.descripcion}" />  </h3>

    </body>
   
    
</html>
