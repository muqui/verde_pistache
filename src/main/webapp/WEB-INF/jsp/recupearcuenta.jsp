
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script>
    $(document).ready(function () {
        $("#formrecupearpass").validate(
                {
                    rules: {

                        password: {
                            required: true,
                            minlength: 8
                        },
                        correo: {
                            required: true,
                            email: true,
                            remote: {
                                url: "/availableemailrecuperar.html",
                                type: "get",
                                data: {
                                    username: function () {
                                        return $("#correo").val();
                                    }
                                }
                            }
                        }
                    },
                    messages: {

                        password: {
                            required: "Contraseña es requerido",
                            minlength: "Capture al menos 8 caracteres"
                        }, correo: {
                            required: "email es requerido",
                            email: "capture email valido",
                            remote: "correo no registrado!"
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


        $('#formrecupearpass').submit(function (e) {

            $.post('/recuperarpassword', $(this).serialize(), function (tventa) {
                var mensaje = tventa + " <a href='/'> regresar</a> ";

                $("#mensajerecuperarpassword").html(mensaje);
                alert(tventa);

            });
            e.preventDefault();
        });




    });






</script>
<tiles:insertDefinition name="defaultTemplate"> 
    <tiles:putAttribute name="body">

        <div id="top-registro" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">
            <div class="uk-container uk-container-expand uk-padding-remove">
                <div class="uk-position-relative cont-top-txt">
                    <div class="uk-position-medium uk-position-bottom-left uk-position-small uk-text-left">

                        <div class="cont-top-title">
                            <h1 class="top-title">Recuperara tu  cuenta</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="uk-section uk-section-primary uk-preserve-color uk-padding-small sect-listado-producto">
            <div class="uk-container">
                <div class="uk-flex uk-flex-middle uk-flex-center">
                    <div class="cont-login">
                        <div class="login-form">
                            <form id="formrecupearpass"  class="uk-form">
                                <div class="uk-grid-small" uk-grid>
                                    <div class="uk-width-1-1 rec-pass">
                                        <p>Le enviaremos un correo con la información para cambiar su contraseña.</p>
                                    </div>
                                    <div  class="uk-width-1-1">
                                        <input class="uk-width-1-1 uk-input"  type="text"  name="correo"      id="correo" placeholder="Correo" cssClass="form-control"/>
                                    </div>

                                    <input type="hidden" name="username" value="xxxxxxxxxxx">
                                    <input type="hidden" name="password" value="xxxxxxxxxxx">
                                    <input type="hidden" name="telefono" value="1234567891">
                                    <input type="hidden" name="cp" value="45021">
                                    <input type="hidden" name="ciudad" value="xxxxxxxxxxx">
                                    <input type="hidden" name="direccion" value="xxxxxxxxxxx">
                                    <input type="hidden" name="apellidos" value="xxxxxxxxxxx">
                                   
                                    <input type="hidden" name="${_csrf.parameterName}"
                                           value="${_csrf.token}" />
                                    <div class="uk-width-1-1 uk-text-right">

                                        <input type="submit" value="Enviar" id="buttonC" class="uk-button uk-button-primary"/>
                                    </div>
                                </div>
                            </form>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>
