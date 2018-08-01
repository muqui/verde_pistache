
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script>
    $(document).ready(function () {
        $("#adduser").validate(
                {
                    rules: {
                        username: {
                            required: true,
                            minlength: 5
                            
                        },

                        correo: {
                            required: true,
                            email: true,
                            remote: {
                                url: "/availableemail.html",
                                type: "get",
                                data: {
                                    username: function () {
                                        return $("#correo").val();
                                    }
                                }
                            }
                        },
                        password: {
                            required: true,
                            minlength: 8
                        },
                        passwordConfirm: {
                            required: true,
                            minlength: 8,
                            equalTo: "#password"
                        },
                         apellidos: {
                            required: true,
                            minlength: 2
                          
                        },
                         direccion: {
                            required: true,
                           maxlength: 50                           
                        }, 
                        ciudad: {
                            required: true,
                            minlength: 2
                           
                        },
                         cp: {
                            required: true,
                            minlength: 5,
                            digits: true
                           
                        },                        
                         telefono: {
                            required: true,
                            minlength: 10,
                            digits: true
                           
                        }
                    },
                    messages: {
                        username: {
                            required: "Nombre es requerido",
                            minlength: "Capture al menos 6 caracteres"
                           
                        },

                        password: {
                            required: "Contraseña es requerido",
                            minlength: "Capture al menos 8 caracteres"
                        },
                        correo: {
                            required: "email es requerido",
                            email: "capture email valido",
                            remote: "correo no disponible!"
                        },
                        passwordConfirm: {
                            required: "Confirmacion de contraseña es requerido",
                            minlength: "Capture al menos 8 caracteres",
                            equalTo: "Capture el mismo valor"

                        },
                        apellidos: {
                            required: "Apellidos son requeridos",
                            minlength:"Capture al menos 2 caracteres"
                          
                        },
                         direccion: {
                            required: "Dirección es requerido",
                           minlength: "Capture maxomo 50 caracteres"                          
                        }, 
                        ciudad: {
                            required: "ciudad es requerida",
                            minlength: "Capture al menos 2 caracteres"
                           
                        },
                         cp: {
                            required: "Código Postal es requerido",
                            minlength: "Capture al menos 5 caracteres",
                             digits:"Capture solo numeros"
                           
                        },                        
                         telefono: {
                            required: "telefono es requerido",
                            minlength: "Capture al menos 10 caracteres",
                            digits:"Capture solo numeros"
                           
                        }
                    },
                    highlight: function (element) {
                        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                    },
                    unhighlight: function (element) {
                        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                    }

                }


        );

    });


</script>
<tiles:insertDefinition name="defaultTemplate"> 
    <tiles:putAttribute name="body">
        <div id="top-registro" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">
            <div class="uk-container uk-container-expand uk-padding-remove">
                <div class="uk-position-relative cont-top-txt">
                    <div class="uk-position-medium uk-position-bottom-left uk-position-small uk-text-left">

                        <div class="cont-top-title">
                            <h1 class="top-title">Registro</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="uk-section uk-section-primary uk-preserve-color uk-padding-small sect-listado-producto">
            <div class="uk-container">
                <div class="cont-compra">
                    <div class="uk-flex uk-flex-middle uk-flex-center">
                        <div class="uk-width-1-2@m">
                            <c:url var="saveuser" value="/saveuser" />
                            <form:form method="POST" action="${saveuser}" modelAttribute="user" id="adduser" class="uk-form">

                                <div class="uk-grid-small" uk-grid>
                                    <div class="uk-width-1-2@s">
                                        <input class="uk-input uk-width-1-1" type="text"  name="username"  id="username" placeholder="Nombre(s)"/>
                                        <form:errors path="username" />
                                    </div>
                                    <div class="uk-width-1-2@s">
                                        <input class="uk-input uk-width-1-1" type="text"  name="apellidos" id="apellidos" placeholder="Apellidos "/>
                                        <form:errors path="apellidos" />
                                    </div>
                                    <div class="uk-width-1-1">
                                        <input class="uk-input uk-width-1-1" type="text"  name="correo" id="correo" placeholder="Correo "/>
                                        <form:errors path="correo" />
                                    </div>
                                    <div class="uk-width-1-2@s">
                                        <input class="uk-input uk-width-1-1" type="password"  name="password" id="password"  placeholder="Contraseña"/>
                                        <form:errors path="password" />
                                    </div>
                                    <div class="uk-width-1-2@s">
                                        <input class="uk-input uk-width-1-1" type="password"  name="passwordConfirm" id="passwordConfirm"  placeholder="Confirmar contraseña"/>
                                        <form:errors path="passwordConfirm" />
                                    </div>
                                    <div class="uk-width-1-1">
                                        <input class="uk-input uk-width-1-1" type="text"  name="direccion" id="direccion" placeholder="Dirección y colonia"/>
                                        <form:errors path="direccion" />
                                    </div>
                                    <!-- <div class="uk-width-1-1">
                                         <input class="uk-input uk-width-1-1" type="text"  name="direccio2" id="direccion2" placeholder="Número interior, piso, etc. (opcional)"/>
                                     </div>-->
                                    <div class="uk-width-1-2@m">
                                        <input class="uk-input uk-width-1-1" type="text"  name="ciudad" id="ciudad" placeholder="Ciudad "/>
                                        <form:errors path="ciudad" />
                                    </div>
                                    <!--
                                    <div class="uk-width-1-2@s">
                                        <input class="uk-input uk-width-1-1" type="text"  name="estado" id="estado" placeholder="Estado"/>
                                        
                                    
                                    </div>-->
                                    <div class="uk-width-1-2@m">
                                        <input class="uk-input uk-width-1-1" type="text"  name="cp" id="cp" placeholder="Código Postal"/>
                                        <form:errors path="cp" />
                                    </div>
                                    <div class="uk-width-1-2@m">
                                        <input class="" type="hidden" name="${_csrf.parameterName}"
                                               value="${_csrf.token}" />
                                        <input class="uk-input uk-width-1-1" type="text"  name="telefono" id="telefono" placeholder="Télefono "/>
                                        <form:errors path="telefono" />
                                    </div>
                                    <div class="uk-width-1-1">
                                        <input class="uk-button uk-button-primary uk-text-right" type="submit" value="Registrar"/>
                                    </div>
                                </div>
                            </form:form>
                        </div> 
                    </div>
                </div>
            </div>
        </div>

    </tiles:putAttribute>
</tiles:insertDefinition>