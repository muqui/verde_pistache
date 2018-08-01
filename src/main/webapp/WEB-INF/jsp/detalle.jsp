<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<tiles:insertDefinition name="defaultTemplate">


    <tiles:putAttribute name="body">

        <!--Sección Top-->
        <c:if test = "${producto.categoria == 'hombre'}">      
            <div id="top-hombres" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">
            </c:if> 
            <c:if test = "${producto.categoria == 'mujer'}">      
                <div id="top-mujeres" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light"> 
                </c:if> 
                <c:if test = "${producto.categoria == 'nino'}">      
                    <div id="top-ninos" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">  
                    </c:if>
                    <div class="uk-container uk-container-expand uk-padding-remove">
                        <div class="uk-position-relative cont-top-txt">
                            <div class="uk-position-medium uk-position-bottom-right uk-position-small uk-text-right">
                                <div class="cont-top-title">
                                    <c:if test = "${producto.categoria == 'hombre'}">      
                                        <h1 class="top-title">Hombres</h1>
                                    </c:if> 
                                    <c:if test = "${producto.categoria == 'mujer'}">      
                                        <h1 class="top-title">Mujeres</h1>
                                    </c:if> 
                                    <c:if test = "${producto.categoria == 'nino'}">      
                                        <h1 class="top-title">niños</h1>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <c:if test="${empty producto}">
                    <h1>Lo sentimos. Esta página no está disponible.</h1>
                </c:if>
                <c:if test="${producto.fotoses.size() > 0}">


                    <!--Inicia detalle del producto-->
                    <div class="uk-section uk-section-primary uk-preserve-color uk-padding-small sect-detalle-producto">
                        <div class="uk-container">
                            <div uk-grid class="">
                                <div class="uk-width-expand@m">
                                    <div uk-slideshow="ratio: 10:11">
                                        <div uk-grid="" class="">
                                            <div class="uk-width-1-4">
                                                <ul class="uk-thumbnav uk-thumbnav-vertical" uk-margin>
                                                    <li uk-slideshow-item="0"><a href="#"><img src="/resources/images/productos/${producto.imagen}.jpg" alt=""></a></li>
                                                    <li uk-slideshow-item="1"><a href="#"><img src="/resources/images/productos/${producto.fotoses[0].nombre}.jpg" alt=""></a></li>
                                                    <li uk-slideshow-item="2"><a href="#"><img src="/resources/images/productos/${producto.fotoses[1].nombre}.jpg" alt=""></a></li>
                                                    <li uk-slideshow-item="3"><a href="#"><img src="/resources/images/productos/${producto.fotoses[2].nombre}.jpg" alt=""></a></li>
                                                </ul>
                                            </div>
                                            <div class="uk-width-3-4" uk-lightbox="animation: slide">
                                                <ul class="uk-slideshow-items" >
                                                    <a href="/resources/images/productos/${producto.imagen}.jpg">
                                                        <li>
                                                            <img src="/resources/images/productos/${producto.imagen}.jpg" alt="" uk-cover>
                                                        </li>
                                                    </a>
                                                    <a href="/resources/images/productos/${producto.fotoses[0].nombre}.jpg">
                                                        <li>
                                                            <img src="/resources/images/productos/${producto.fotoses[0].nombre}.jpg" alt="" uk-cover>
                                                        </li>
                                                    </a>
                                                    <a href="/resources/images/productos/${producto.fotoses[1].nombre}.jpg">
                                                        <li>
                                                            <img src="/resources/images/productos/${producto.fotoses[1].nombre}.jpg" alt="" uk-cover>
                                                        </li>
                                                    </a>
                                                    <a href="/resources/images/productos/${producto.fotoses[2].nombre}.jpg">
                                                        <li>
                                                            <img src="/resources/images/productos/${producto.fotoses[2].nombre}.jpg" alt="" uk-cover>
                                                        </li>
                                                    </a>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div>

                                    </div> 
                                </div>  
                                <div class="uk-width-1-3@m">
                                    <div class="titulo">
                                        <h1 id="product-title" class="product-title">
                                            ${producto.nombre}
                                        </h1>
                                        <div class="txt-ref">
                                            REF <span id="txt-ref">${producto.codigo}</span>
                                        </div>
                                        <hr />
                                        <div class="txt-precio">
                                            $<span id="txt-precio">${producto.price}</span>
                                        </div>
                                        <div id="txt-desc" class="txt-desc">
                                            Color: ${producto.descripcion}.
                                        </div>
                                    </div>
                                    <div>
                                        <div id="select-size" class="select-size">

                                            <input name="idproducto" id="idproducto" type="hidden" value="${producto.idproducto}" >
                                            <input name="imagen" id="imagen" type="hidden" value="${producto.imagen}" >
                                            <input name="nombre" id="nombre" type="hidden" value="${producto.nombre}">
                                            <input name="codigo" id="codigo" type="hidden" value="${producto.codigo}">
                                            <input name="price" id="price" type="hidden" value="${producto.price}">
                                            <input name="cantidad" id="cantidad" type="hidden" value="1">
                                            <input name="descripcion" id="descripcion" type="hidden" value="${producto.descripcion}">
                                            <input name="stock" id="stock" type="hidden" value="${producto.stock}">

                                            <label class="selector uk-width-1-1">
                                                <div id="error" class="error"></div>
                                                <select id="size-variation" name="talla" class="uk-width-1-1" required="">
                                                    <option hidden value="">Selecciona una talla</option> 
                                                    <option value="31002">Extra Chica</option>
                                                    <option value="31000">Chica</option>
                                                    <option value="31004">Mediana</option>
                                                    <option value="31003">Grande</option>
                                                    <option value="31001">Extra Grande</option>
                                                </select>
                                            </label>
                                        </div>
                                        <div id="cont-btn-cart" class="cont-btn-cart">
                                            <input class="uk-button uk-button-primary" type="submit" value="Añadir a carrito" onclick="doAjaxPost()">
                                        </div>

                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Inicia detalle del producto-->
                </c:if>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                <script type="text/javascript">
                                                function doAjaxPost() {
                                                   
                                                    // get the form values
                                                    var imagen = $('#imagen').val();
                                                    var nombre = $('#nombre').val();
                                                    var idproducto = $('#idproducto').val();
                                                    var talla = $('#size-variation').val();
                                                    var cantidad = $('#cantidad').val();
                                                    var price = $('#price').val();
                                                     var codigo = $('#codigo').val();
                                                      $('#error').html("");
                                                    $.ajax({
                                                        type: "POST",
                                                        url: "/addcarrito",
                                                        data: "imagen=" + imagen + "&nombre=" + nombre + "&idproducto=" + idproducto + "&talla=" + talla + "&cantidad=" +cantidad +"&price=" + price +"&codigo="+codigo,
                                                        success: function (response) {
                                                            // we have the response
                                                            if (response.status == "SUCCESS") {
                                                                alert("Producto agregado.")
                                                            } else {
                                                                errorInfo = "";
                                                                for (i = 0; i < response.result.length; i++) {
                                                                    errorInfo += "<br>"  + response.result[i].code;
                                                                }
                                                                $('#error').html( errorInfo);
                                                                $('#info').hide('slow');
                                                                $('#error').show('slow');
                                                            }
                                                        },
                                                        error: function (e) {
                                                            alert('Error: ' + e);
                                                        }
                                                    });
                                                }
                </script>
            </tiles:putAttribute>
        </tiles:insertDefinition>