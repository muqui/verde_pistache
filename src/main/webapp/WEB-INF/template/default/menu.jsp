<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--Menú móviles-->
<div class="tm-header-mobile uk-hidden@m tm-header-transparent uk-position-relative" uk-header>
    <div class="uk-position-top">
        <div uk-sticky="bottom: true; animation: uk-animation-slide-top; sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; cls-inactive: uk-navbar-transparent uk-light; top: 400">
            <div class="uk-navbar-container uk-navbar-transparent uk-light">
                <div class="uk-container">
                    <nav class="uk-navbar-transparent uk-light" uk-navbar>
                        <div class="uk-navbar-left">
                            <a class="uk-navbar-toggle" uk-navbar-toggle-icon uk-toggle="target: #tm-mobile"></a>
                        </div>
                        <div class="uk-navbar-center">
                            <a class="uk-navbar-item uk-logo" href="/">
                                <img src="/resources/images/logo-verde-pistache-w.png" class="uk-responsive-height" alt="Verde Pistache">
                            </a>
                        </div>
                        <div class="uk-navbar-right">
                            <ul class="uk-navbar-nav">
                                <c:if test="${pageContext.request.userPrincipal.name == null}">            
                                    <li> <li><a href="/login" uk-icon="icon: user"></a></li>                                         
                                    </c:if>  
                                    <c:if test="${pageContext.request.userPrincipal.name != null}">            
                                    <li><a  href="javascript:formSubmit()">Salir </a></li>              
                                    </c:if>  
                                <li><a href="/carrito" uk-icon="icon: cart"></span></a></li>
                            </ul>
                        </div>
                    </nav>
                    <div id="tm-mobile" uk-offcanvas="flip: false; overlay: true">
                        <div class="uk-offcanvas-bar">
                            <button class="uk-offcanvas-close" type="button" uk-close></button>
                            <ul class="uk-nav uk-nav-primary">
                                <li class="uk-active"><a href="catalogo?c=mujer">Mujer</a></li>
                                <li><a href="catalogo?c=hombre">Hombre</a></li>
                                <li><a href="catalogo?c=nino">Niños</a></li>

                            </ul>
                            <div class="uk-margin">
                                <form class="uk-search uk-search-default">
                                    <span uk-search-icon></span>
                                    <input class="uk-search-input" type="search" placeholder="Buscar...">
                                </form>
                            </div>
                        </div>  
                    </div> 
                </div>
            </div>
        </div>
    </div>
</div>
<!--Menú escritorio-->
<div class="tm-header uk-visible@m tm-header-transparent uk-position-relative" uk-header="">
    <div class="uk-position-top">
        <div uk-sticky="bottom: true; animation: uk-animation-slide-top; sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; cls-inactive: uk-navbar-transparent uk-light; top: 200" class="uk-sticky">
            <div class="uk-navbar-container uk-navbar-transparent uk-light">
                <div class="uk-container">
                    <nav class="uk-navbar-transparent uk-light" uk-navbar>
                        <div class="uk-navbar-left">
                            <a class="uk-navbar-item uk-logo" href="/">
                                <img src="/resources/images/logo-verde-pistache-w.png" class="uk-responsive-height" alt="Verde Pistache">
                            </a>
                            <ul class="uk-navbar-nav">
                                <li><a href="catalogo?c=mujer">Mujer</a></li>
                                <li><a href="catalogo?c=hombre">Hombre</a></li>
                                <li><a href="catalogo?c=nino">Niños</a></li>
                            </ul>
                        </div>
                        <div class="uk-navbar-center">

                        </div>
                        <div class="uk-navbar-right">
                            <ul class="uk-navbar-nav">
                                <li>
                                    <a class="uk-navbar-toggle" uk-search-icon href="#"></a>
                                    <div class="uk-drop" uk-drop="mode: click; pos: left-center; offset: 0">
                                        <form class="uk-search uk-search-navbar uk-width-1-1">
                                            <input class="uk-search-input form-control" type="search" placeholder="Buscar..." autofocus>
                                        </form>
                                    </div>
                                </li>
                                <c:if test="${pageContext.request.userPrincipal.name == null}">            
                                    <li><a href="/login" uk-icon="icon: user"></a></li>
                                    </c:if>  
                                    <c:if test="${pageContext.request.userPrincipal.name != null}">            
                                    <li><a  href="javascript:formSubmit()"  uk-icon="icon: sign-in"  ></a></li>              
                                    </c:if>  

                                <li><a href="/carrito" uk-icon="icon: cart"></span></a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>

<c:url value="/logout" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
</form>
<script>
    function formSubmit() {
        document.getElementById("logoutForm").submit();
    }
</script>