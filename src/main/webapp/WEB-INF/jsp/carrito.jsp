

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <!--Sección Top-->

        <div id="top-carrito" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">
            <div class="uk-container uk-container-expand uk-padding-remove">
                <div class="uk-position-relative cont-top-txt">
                    <div class="uk-position-medium uk-position-bottom-right uk-position-small uk-text-right">

                        <div class="cont-top-title">
                            <h1 class="top-title">Mi carrito</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${empty sessionScope.carrito}">
            <h1>Tu carrito esta vacio.</h1>
            <div class="cont-go-home">
                <a href="/"><span uk-icon="icon: chevron-left"></span> Continuar comprando</a>
            </div>
        </c:if>
        <c:if test="${sessionScope.carrito.size() > 0}">
            <div class="uk-section uk-section-primary uk-preserve-color uk-padding-small sect-listado-producto">
                <div class="uk-container">
                    <div class="cont-table-cart">
                        <table class="uk-table cart-table">
                            <thead> 
                                <tr>
                                    <th></th>
                                    <th>Producto</th>
                                    <th>Talla</th> 
                                    <th>Cantidad</th>
                                    <th>Precio</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${sessionScope.carrito}" var="p" varStatus="status">
                                    <c:set var="s" value="${s + p.price * p.cantidad }"></c:set>
                                        <tr>
                                            <td class="product-remove"><a class="remove" uk-icon="icon: close" href="/borrarproducto?c=${p.imagen}"></a></td>
                                        <td class="product-name">
                                            <div class=""><a href="#"><img class="img-product-thumbnail" src="/resources/images/productos/${p.imagen}.jpg"> ${p.nombre}</div></a></td>
                                        <td class="product-size">${p.talla}  </td>
                                        <td class="product-qty">${p.cantidad}</td>
                                        <td class="product-price">${p.price * p.cantidad}</td>
                                    </tr>
                                </c:forEach>  
                            </tbody>
                        </table>
                    </div>
                    <div class="cont-total-actions">
                        <div class="cont-total">
                            Total: <span class="total-price">${s}</span>
                        </div>
                        <div class="cont-go-home">
                            <a href="/"><span uk-icon="icon: chevron-left"></span> Continuar comprando</a>
                        </div>
                        <div class="cont-compra">
                            <a class="uk-button uk-button-primary" href="/carrito">Actualizar</a>  <a class="uk-button uk-button-primary" href="/informacion">Completar Compra</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>

    </tiles:putAttribute>
</tiles:insertDefinition>