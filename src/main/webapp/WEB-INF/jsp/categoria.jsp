<%-- 
    Document   : categoria
    Created on : 26/06/2018, 02:28:14 PM
    Author     : mq12
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
       
    <!--Sección Top-->
            <c:if test = "${categoria == 'hombre'}">      
                <div id="top-hombres" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">
                </c:if> 
                <c:if test = "${categoria == 'mujer'}">      
                    <div id="top-mujeres" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light"> 
                    </c:if> 
                    <c:if test = "${categoria == 'nino'}">      
                        <div id="top-ninos" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">  
                        </c:if>
                        <div class="uk-container uk-container-expand uk-padding-remove">
                            <div class="uk-position-relative cont-top-txt">
                                <div class="uk-position-medium uk-position-bottom-right uk-position-small uk-text-right">
                                    <div class="cont-top-title">
                                        <c:if test = "${categoria == 'hombre'}">      
                                            <h1 class="top-title">Hombres</h1>
                                        </c:if> 
                                        <c:if test = "${categoria == 'mujer'}">      
                                            <h1 class="top-title">Mujeres</h1>
                                        </c:if> 
                                        <c:if test = "${categoria == 'nino'}">      
                                            <h1 class="top-title">niños</h1>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

        <!--Comienza listado de productos-->
        <div class="uk-section uk-section-primary uk-preserve-color uk-padding-small sect-listado-producto">
            <div class="uk-container">
    			<div uk-grid class="uk-grid-match uk-child-width-1-2@m">
        		<c:forEach items="${productos}" var="p" varStatus="status">
            		<div class="">
            			<div class="cont-product-item uk-text-center">
                		<a href="/producto?c=${p.imagen}"><img class="img-product-thumbnail" src="/resources/images/productos/${p.imagen}.jpg"> </a>         
                		<a href="/producto?c=${p.imagen}"><h3 class="product-name"> ${p.nombre}</h3> </a>
                		<div class="txt-precio">
                			$<span id="txt-precio">${p.price}</span>
                		</div>
                		</div>
           		 </div>
        		</c:forEach>   
    			</div>
    		</div>
    	</div>		
    	<!--Termina listado de productos-->
	</tiles:putAttribute>
</tiles:insertDefinition>
