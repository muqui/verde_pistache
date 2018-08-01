<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
           <!--Sección Slider-->
        <div class="uk-section uk-section-primary uk-padding-remove" tm-header-transparent="light">
            <div class="uk-container uk-container-expand uk-padding-remove">
                <div uk-slideshow="autoplay: true; animation: fade; autoplay-interval: 5000" class="uk-position-relative uk-visible-toggle uk-light">
                    <ul class="uk-slideshow-items" uk-height-viewport="min-height: 300">
                        <li>
                            <div class="uk-position-cover uk-animation-kenburns uk-transform-origin-center-left">
                                <img src="/resources/images/Slide-1.png" alt="" uk-cover>
                            </div>
                            <div class="uk-position-medium uk-position-bottom-right uk-position-small uk-text-right">
                                <div class="cont-slide-txt">
                                    <h1 class="slide-title title-1a">Fuera prejuicios,</h1>
                                    <h1 class="slide-title">¡sé tú misma!</h1>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="uk-position-cover uk-animation-kenburns uk-transform-origin-center-left">
                                <img src="/resources/images/Slide-2.png" alt="" uk-cover>
                            </div>
                            <div class="uk-position-medium uk-position-center uk-position-small uk-text-center">
                                <div class="cont-slide-txt">
                                    <h1 class="slide-title">¡Basta de ser</h1>
                                    <h1 class="slide-title">mainstream!</h1>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="uk-position-cover uk-animation-kenburns uk-transform-origin-center-left">
                                <img src="/resources/images/Slide-3.png" alt="" uk-cover>
                            </div>
                            <div class="uk-position-medium uk-position-bottom-left uk-position-small">
                                <div class="cont-slide-txt">
                                    <h1 class="slide-title title-3a">Que jueguen</h1>
                                    <h1 class="slide-title">a ser ellos</h1>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
                    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
                </div>
            </div>
        </div>
        <!--Termina Sección Slider-->
        <div class="uk-section uk-section-primary uk-preserve-color uk-padding-remove sect-products-index">
            <div class="uk-container uk-container-expand uk-padding-remove">
                <div uk-grid class="uk-grid-collapse uk-grid-match" data-uk-grid-match="{target:'.uk-panel', row:true}">
                    <div class="uk-width-1-2@m">
                        <div class="uk-inline-clip product-index-content uk-transition-toggle uk-light" tabindex="0">
                            <a href="/producto?c=1259607622_2_4_1">
                                <img src="/resources/images/prod-thumb-01.png" class="uk-transition-scale-up uk-transition-opaque" alt="">
                                <div class="uk-overlay-primary uk-position-cover uk-transition-fade"></div>
                                <div class="uk-position-center">
                                    <span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="uk-width-1-2@m">
                        <div uk-grid class="uk-grid-collapse uk-grid-match">
                            <div class="uk-width-1-2@s">
                                <div uk-grid class="uk-grid-collapse uk-grid-match">
                                    <div class="uk-width-1-1">
                                        <div class="uk-inline-clip product-index-content uk-transition-toggle uk-light" tabindex="0">
                                            <a href="/producto?c=8295111400_1_1_1">
                                                <img src="/resources/images/prod-thumb-02.png" class="uk-transition-scale-up uk-transition-opaque" alt="">
                                                <div class="uk-overlay-primary uk-position-cover uk-transition-fade"></div>
                                                <div class="uk-position-center">
                                                    <span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="uk-width-1-1">
                                        <div class="uk-inline-clip product-index-content uk-transition-toggle uk-light" tabindex="0">
                                            <a href="/producto?c=1292816800_2_2_1">
                                                <img src="/resources/images/prod-thumb-03.png" class="uk-transition-scale-up uk-transition-opaque" alt="">
                                                <div class="uk-overlay-primary uk-position-cover uk-transition-fade"></div>
                                                <div class="uk-position-center">
                                                    <span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="uk-width-1-2@s">
                                <div class="uk-inline-clip product-index-content uk-transition-toggle uk-light" tabindex="0">
                                    <a href="/producto?c=2649443251_1_1_1">
                                        <img src="/resources/images/prod-thumb-04.png" class="uk-transition-scale-up uk-transition-opaque" alt="">
                                        <div class="uk-overlay-primary uk-position-cover uk-transition-fade"></div>
                                        <div class="uk-position-center">
                                            <span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-1-2@m">
                        <div uk-grid class="uk-grid-collapse uk-grid-match">
                            <div class="uk-width-1-2@s">
                                <div class="uk-inline-clip product-index-content uk-transition-toggle uk-light" tabindex="0">
                                    <a href="/producto?c=2859831610_2_1_1">
                                        <img src="/resources/images/prod-thumb-05.png" class="uk-transition-scale-up uk-transition-opaque" alt="">
                                        <div class="uk-overlay-primary uk-position-cover uk-transition-fade"></div>
                                        <div class="uk-position-center">
                                            <span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="uk-width-1-2@s">
                                <div class="uk-inline-clip product-index-content uk-transition-toggle uk-light" tabindex="0">
                                    <a href="/producto?c=1880673401_1_1_1">
                                        <img src="/resources/images/prod-thumb-06.png" class="uk-transition-scale-up uk-transition-opaque" alt="">
                                        <div class="uk-overlay-primary uk-position-cover uk-transition-fade"></div>
                                        <div class="uk-position-center">
                                            <span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-1-2@m">
                        <div class="uk-inline-clip product-index-content uk-transition-toggle uk-light" tabindex="0">
                            <a href="/producto?c=2956461300_2_4_1">
                                <img src="/resources/images/prod-thumb-07.png" class="uk-transition-scale-up uk-transition-opaque" alt="">
                                <div class="uk-overlay-primary uk-position-cover uk-transition-fade"></div>
                                <div class="uk-position-center">
                                    <span class="uk-transition-fade" uk-icon="icon: plus; ratio: 2"></span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>     
           
        </tiles:putAttribute>
</tiles:insertDefinition>