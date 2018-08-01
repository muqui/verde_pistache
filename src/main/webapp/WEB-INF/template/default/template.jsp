<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html class="uk-light uk-section-primary detalle-producto">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
        <link href="<c:url value="/resources/css/uikit.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/fonts/djgross.css" />" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.6/js/uikit.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.6/js/uikit-icons.min.js"></script>
        <link rel="shortcut icon" href='<c:url value="/resources/images/apple_touch.png" />' type="image/x-icon">
        <link rel="icon" href='<c:url value="/resources/images/apple_touch.png" />' type="image/x-icon">
        <title>Verde Pistache</title>

    </head>
    <body>
        <div class="uk-offcanvas-content">
            <div class="page">
                <tiles:insertAttribute name="menu" />
                <div class="content">

                    <tiles:insertAttribute name="body" />
                </div>
                <tiles:insertAttribute name="footer" />
            </div>
        </div>
    </body>
</html>