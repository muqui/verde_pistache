
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        ${sessionScope.carrito.size()}
        <h1>Hello World!</h1>
        <!-- 
       <form method="post" action="${payPalConfig.posturl}">
           <input type="hidden" name="upload" value="1">

           <input type="hidden" name="return" value="${payPalConfig.returnurl}">
           <input type="hidden" name="cmd" value="_cart">
           <input type="hidden" name="business" value="${payPalConfig.business}">
           
         
          <input type="hidden" name="item_name_1" value="Product 1">
           <input type="hidden" name="item_number_1" value="p1">
           <input type="hidden" name="amount_1" value="2">
           <input type="hidden" name="quantity_1" value="3">
         

           <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif">
       </form>


   </body>
        -->

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
                            window.alert('Thank you for your purchase!');
                            window.location.replace("/exito");
                            });
                    }
            }, '#paypal-button');
        </script>

</html>



