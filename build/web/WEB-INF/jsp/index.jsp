<%@page import="model.Projet"%>
<%@page import="java.util.List"%>
<%
    List<Projet> lp = (List<Projet>) request.getAttribute("lp");
%>
<!DOCTYPE html>
<html lang="en">

    <!-- stella-orre/index-2.html  30 Nov 2019 03:46:47 GMT -->
    <head>
        <meta charset="utf-8">
        <title>Orr'e</title>
        <!-- Stylesheets -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet">

        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/x-icon">
        <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/x-icon">

        <!-- Responsive -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
        <!--[if lt IE 9]><script src="${pageContext.request.contextPath}/resources/js/respond.js"></script><![endif]-->
    </head>

    <body class="dark-layout">

        <div class="page-wrapper">
            <!-- Preloader -->
            <div class="preloader"></div>

            <!-- Main Header / Header Style Two -->
            <header class="main-header header-style-two">

                <!-- Header Upper -->
                <div class="header-upper">
                    <div class="outer-container clearfix">
                        <!--Info-->
                        <div class="logo-outer">
                            <div class="logo"><a href="#"><img src="${pageContext.request.contextPath}/resources/images/logo-2.png" alt="" title=""></a></div>
                        </div>

                        <!--Nav Box-->
                        <div class="nav-outer clearfix">
                            <!--Mobile Navigation Toggler For Mobile--><div class="mobile-nav-toggler"><span class="icon flaticon-menu-1"></span></div>
                            <nav class="main-menu navbar-expand-md navbar-light">
                                <div class="navbar-header">
                                    <!-- Togg le Button -->      
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="icon flaticon-menu-1"></span>
                                    </button>
                                </div>

                                <div class="collapse navbar-collapse clearfix" id="navbarSupportedContent">
                                    <ul class="navigation clearfix">
                                        <li><a href="#">Accueil</a>
                                        </li>
                                        <li  class="current dropdown"><a href="#">Projets</a>
                                        </li>
                                        <li><a href="contact.html">Déconnexion</a></li>
                                    </ul>
                                </div>
                            </nav>
                            <!-- Main Menu End-->

                            <!-- Outer Box -->
                            <div class="outer-box clearfix">
                                <div class="search-box-btn"><span class="icon flaticon-magnifying-glass-1"></span></div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--End Header Upper-->

                <!-- Mobile Menu  -->
                <div class="mobile-menu">
                    <div class="menu-backdrop"></div>
                    <div class="close-btn"><span class="icon flaticon-cancel"></span></div>

                    <nav class="menu-box">
                        <div class="nav-logo"><a href="#"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="" title=""></a></div>
                        <ul class="navigation clearfix"><!--Keep This Empty / Menu will come through Javascript--></ul>
                    </nav>
                </div><!-- End Mobile Menu -->

            </header>
            <!-- End Main Header -->

            <!-- Main Slider -->
            <section class="main-slider style-two">
                <div class="slider-box">

                    <!-- Banner Carousel -->
                    <div class="banner-carousel owl-theme owl-carousel">

                        <!-- Slide -->
                        <div class="slide">
                            <div class="image-layer" style="background-image:url(${pageContext.request.contextPath}/resources/images/main-slider/q.jpg)"></div>
                            <div class="auto-container">
                                <div class="content">
                                    <h2>Des salles de cinéma <br> gigantesque</h2>
                                    <div class="text">Depuis 1896, la salle de cinéma est devenue l'un des modes de diffusion de films au quotidien du peuple .</div>
                                </div>
                            </div>
                        </div>

                        <!-- Slide -->
                        <div class="slide">
                            <div class="image-layer" style="background-image:url(${pageContext.request.contextPath}/resources/images/main-slider/10915271.jpg)"></div>
                            <div class="auto-container">
                                <div class="content">
                                    <h2>Des scènes à couper <br> le souffle</h2>
                                    <div class="text">Produire des scènes réalistes mais à couper le souffle pour le plaisir des spectateurs .</div>
                                </div>
                            </div>
                        </div>

                        <!-- Slide -->
                        <div class="slide">
                            <div class="image-layer" style="background-image:url(${pageContext.request.contextPath}/resources/images/main-slider/w.jpg)"></div>
                            <div class="auto-container">
                                <div class="content">
                                    <h2>Des caméras <br> ultra modernes</h2>
                                    <div class="text">Avec des caméras derniers cri ou nouvelles générations, les films passent à une toute autre niveau .</div>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
            </section>
            <!-- End Banner Section -->

            <!-- Services Section Three -->
            <section class="services-section-three">
                <div class="auto-container">

                    <!-- Sec Title -->
                    <div class="sec-title light centered">
                        <h2>Vos projets</h2>
                        <div class="text">Creer un tout nouveau concept de film, un tout nouveau projet.</div>
                    </div>

                    <div class="row clearfix">

                        <%for (Projet p : lp) {%>
                        <!-- Service Block -->
                        <div class="service-block-three col-lg-3 col-md-6 col-sm-12">
                            <div class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <div class="image">
                                    <a href="${pageContext.request.contextPath}/liste_plateau?idProjet=<%=p.getIdProjet()%>"><img src="${pageContext.request.contextPath}/resources/images/resource/<%=p.getNomImage()%>" alt="" /></a>
                                </div>
                                <div class="lower-content">
                                    <h3><a href="liste_plateau.html"><%=p.getNom()%></a></h3>
                                    <div class="text"><%=p.getSynopsis()%></div>
                                    <a href="${pageContext.request.contextPath}/planning?idProjet=<%=p.getIdProjet()%>" class="read-more">Planning</a>
                                </div>
                            </div>
                        </div>
                        <%}%>

                    </div>

                    <!-- Button Box -->
                    <div class="btn-box text-center">
                        <a href="residental-interior.html" class="theme-btn btn-style-three"><span class="txt">Ajouter Projet</span></a>
                    </div>

                </div>
            </section>
            <!-- End Services Section -->

            <!--Main Footer-->
            <footer class="main-footer">
                <div class="auto-container">
                    <!--Widgets Section-->
                    <div class="widgets-section">
                        <div class="row clearfix">

                            <!--big column-->
                            <div class="big-column col-lg-6 col-md-12 col-sm-12">
                                <div class="row clearfix">

                                    <!--Footer Column-->
                                    <div class="footer-column col-lg-5 col-md-6 col-sm-12">
                                        <div class="footer-widget links-widget">
                                            <h2>ETU</h2>
                                            <div class="widget-content">
                                                <ul class="list">
                                                    <li>1379</li>
                                                    <li>1471</li>
                                                    <li>1411</li>
                                                    <li>1440</li>
                                                    <li>1516</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <!--big column-->
                            <div class="big-column col-lg-6 col-md-12 col-sm-12">
                                <div class="row clearfix">


                                    <!--Footer Column-->
                                    <div class="footer-column col-lg-5 col-md-6 col-sm-12">
                                        <div class="footer-widget links-widget">
                                            <h2>Noms et Prenoms</h2>
                                            <div class="widget-content">
                                                <ul class="list">
                                                    <li>ANDRIAMAMONJY Johanesa Tiavina</li>
                                                    <li>RAMIAKAMANANA Mamisoa Ricky</li>
                                                    <li>MANANTSOA Justin Rakoto Fandresena</li>
                                                    <li>RAKOTOARISOA Mamiherimanitra Nomena</li>
                                                    <li>Safidy NIAINA Samantha</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>


                </div>
            </footer>

        </div>  
        <!--End pagewrapper-->

        <!--Scroll to top-->
        <div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>

        <!--Search Popup-->
        <div id="search-popup" class="search-popup">
            <div class="close-search theme-btn"><span class="flaticon-cancel"></span></div>
            <div class="popup-inner">
                <div class="overlay-layer"></div>
                <div class="search-form">
                    <form method="post" action="templateshub.net">
                        <div class="form-group">
                            <fieldset>
                                <input type="search" class="form-control" name="search-input" value="" placeholder="Search Here" required >
                                <input type="submit" value="Search Now!" class="theme-btn">
                            </fieldset>
                        </div>
                    </form>

                    <br>
                    <h3>Recent Search Keywords</h3>
                    <ul class="recent-searches">
                        <li><a href="#">Home Interiors</a></li>
                        <li><a href="#">Offices Interiors</a></li>
                        <li><a href="#">Showroom Interiors</a></li>
                        <li><a href="#">Building Interiors</a></li>
                        <li><a href="#">Shops Interiors</a></li>
                    </ul>

                </div>

            </div>
        </div>

        <!--Scroll to top-->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/isotope.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/owl.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/wow.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/isotope.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/appear.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scrollbar.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
    </body>

    <!-- stella-orre/index-2.html  30 Nov 2019 03:48:03 GMT -->
</html>