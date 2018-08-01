<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
         <div id="top-hombres" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">
            <div class="uk-container uk-container-expand uk-padding-remove">
                <div class="uk-position-relative cont-top-txt">
                    <div class="uk-position-medium uk-position-bottom-right uk-position-small uk-text-right">

                        <div class="cont-top-title">
                            <h1 class="top-title">MI CARRITO</h1>

                        </div>
                    </div>
                </div>
            </div>
        </div>
         <h1>Tu compra se realizo con exito!</h1>

</tiles:putAttribute>
</tiles:insertDefinition>