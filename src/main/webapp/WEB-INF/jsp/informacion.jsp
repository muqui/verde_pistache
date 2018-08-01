
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
<tiles:putAttribute name="body">
<div id="top-carrito" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">
            <!--<div class="uk-container uk-container-expand uk-padding-remove">
                <div class="uk-position-relative cont-top-txt">
                    <div class="uk-position-medium uk-position-bottom-right uk-position-small uk-text-right">

                        <div class="cont-top-title">
                            <h1 class="top-title">Mi carrito</h1>
                        </div>
                    </div>
                </div>
            </div>-->
        </div>
        <div class="uk-section uk-section-primary uk-preserve-color uk-padding-small sect-listado-producto">
            <div class="uk-container">
                <div class="cont-compra">
                    <div uk-grid class="uk-grid-divider">
                <div class="uk-width-1-2@m">
                    <c:url var="saveuser" value="/saveuser" />
                <form:form method="POST" action="${saveuser}" modelAttribute="user" id="adduser" class="uk-form">
              
                <input class="uk-input uk-width-1-1" type="text"  name="username" value="${user.username}"   id="username" placeholder="Nombre""/>
                <form:errors path="username" />
                <input class="uk-input uk-width-1-1" type="text"  name="apellidos" value="${user.apellidos}" id="email" placeholder="apellidos "/>
                <form:errors path="apellidos" />
                <input class="uk-input uk-width-1-1" type="text"  name="correo" value="${user.correo}" id="email" placeholder="correo "/>
                <form:errors path="correo" />
                <input class="uk-input uk-width-1-1" type="text"  name="telefono" value="${user.telefono}"id="email" placeholder="telefono "/>
                <form:errors path="telefono" />
                <input class="uk-input uk-width-1-1" type="text"  name="cp" value="${user.cp}"id="email" placeholder="cp "/>
                <form:errors path="cp" />
                <input class="uk-input uk-width-1-1" type="text"  name="ciudad" value="${user.ciudad}" id="email" placeholder="ciudad "/>
                <form:errors path="ciudad" />
                <input class="uk-input uk-width-1-1" type="text"  name="direccion" value="${user.direccion}" id="email" placeholder="direccion "/>
                <form:errors path="direccion" />
               <!--
                <input class="uk-input uk-width-1-1" type="hidden" name="${_csrf.parameterName}"
                value="${_csrf.token}" />
                <input class="uk-button uk-button-primary" type="submit" value="Registrar"/-->
            </form:form>
                       <div id="paypal-button"></div>
        <script src="https://www.paypalobjects.com/api/checkout.js"></script>
        <script>
            paypal.Button.render({
            // Configure environment
            env: 'sandbox',
                    client: {
                    sandbox: 'ASWdhDEhq7qMO_qD3rJc2K7kgdwO1rzhIvry9jKZnI8NS-6HRaIbFvoIayGhEVoVMMuFJRPDfJZXTCRe',
                            production: 'demo_production_client_id'
                    },
                    // Customize button (optional)
                    locale: 'en_US',
                    style: {
                    size: 'small',
                            color: 'gold',
                            shape: 'pill',
                    },
                    // Set up a payment

                    payment: function (data, actions) {
                    return actions.payment.create({
                    transactions: [{
                    amount: {
            <c:forEach items="${sessionScope.carrito}" var="p" varStatus="status">
                <c:set var="s" value="${s + p.price * p.cantidad }"></c:set>
            </c:forEach>
                    total: '${s}',
                            currency: 'MXN'

                    },
                            description: 'The payment transaction description.',
                            custom: '90048630024435',
                            //invoice_number: '12345', Insert a unique invoice number
                            payment_options: {
                            allowed_payment_method: 'INSTANT_FUNDING_SOURCE'
                            },
                            soft_descriptor: 'ECHI5786786',
                            item_list: {
                            items: [
            <c:forEach items="${sessionScope.carrito}" var="p" varStatus="status"> {
                                    name: '${p.codigo}',
                                            quantity: '${p.cantidad}',
                                            price: '${p.price}',
                                            currency: 'MXN'
                <c:choose><c:when test = "${status.index < sessionScope.carrito.size()-1}">}, </c:when><c:otherwise>}</c:otherwise>
                </c:choose>
            </c:forEach>
                            ],
                                    shipping_address: {
                                    recipient_name: 'Brian Robinson',
                                            line1: '4th Floor',
                                            line2: 'Unit #34',
                                            city: 'San Jose',
                                            country_code: 'US',
                                            postal_code: '95131',
                                            phone: '011862212345678',
                                            state: 'CA'
                                    }
                            }
                    }],
                            note_to_payer: 'Contact us for any questions on your order.'
                    });
                    },
                    // Execute the payment
                    onAuthorize: function (data, actions) {
                    return actions.payment.execute()
                            .then(function () {
                            // Show a confirmation message to the buyer
                          //  window.alert('Thank you for your purchase!');
                            window.location.replace("/exito");
                            });
                    }
            }, '#paypal-button');
        </script>

            </div>
            <div class="uk-width-1-2@m">
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
                            <td class="product-remove"></td>
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
                
            </div>
        </div>
            </div>    
            </div>
            </div>
        </div>
    </div>

</tiles:putAttribute>
</tiles:insertDefinition>