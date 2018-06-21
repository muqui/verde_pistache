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
        <title>JSP Page</title>
    </head>
    <body>
        <h1> <c:out value="${producto.descripcion}" />  </h1>
    </body>
</html>
