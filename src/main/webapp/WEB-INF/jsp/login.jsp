<%-- 
    Document   : login
    Created on : 7/07/2017, 09:43:39 PM
    Author     : mq12
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
    <!--Sección Top-->
    <div id="top-registro" class="uk-section uk-section-primary uk-padding-remove sect-top" tm-header-transparent="light">
        <div class="uk-container uk-container-expand uk-padding-remove">
            <div class="uk-position-relative cont-top-txt">
                    <div class="uk-position-medium uk-position-bottom-left uk-position-small uk-text-left">
                        <div class="cont-top-title">
                            <h1 class="top-title">Inicio de sesión</h1>
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
                                <form  action="<c:url value='/login' />" method='POST'>
                                <div class="uk-grid-small" uk-grid>
                                    <div class="uk-width-1-1">
                                        <input required="" class="uk-width-1-1 uk-input" type="text" name="correo" placeholder="Correo"/>
                                    </div>
                                    <div class="uk-width-1-1">
                                        <input required="" class="uk-width-1-1 uk-input" type="password"  name="password" placeholder="Contraseña"/>
                                    </div>
                                    <div class="uk-width-1-1 error-message">
                                    <c:if test="${not empty error}">
                                        <div class="error">${error}</div>
                                    </c:if>
                                    <c:if test="${not empty msg}">
                                        <div class="msg">${msg}</div>
                                    </c:if>
                                    </div>
                                    <div class="uk-width-1-1 rec-pass">
                                        <a href="/recupearcuentaf" >¿Olvidaste tu contraseña?</a>
                                    </div>
                                    <div class="uk-width-1-1 uk-text-right">
                                        <input type="hidden" name="${_csrf.parameterName}"
                                        value="${_csrf.token}" />
                                        <input type="submit" value="Entrar" class="uk-button uk-button-primary"/>
                                        <br>
                                        <span class="no-account">¿Aún no tienes cuenta?</span> <a href="/registro"class="sign-up">¡Regístrate!</a>
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