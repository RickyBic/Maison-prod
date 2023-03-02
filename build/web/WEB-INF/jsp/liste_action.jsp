<%@page import="model.Action"%>
<%@page import="model.Plateau"%>
<%@page import="model.Scene"%>
<%@page import="model.Projet"%>
<%@page import="java.util.List"%>
<%
    Scene sc = (Scene) request.getAttribute("sc");
    Plateau pl = (Plateau) request.getAttribute("pl");
    Projet p = (Projet) request.getAttribute("p");
    List<Action> la = (List<Action>) request.getAttribute("la");
%>
<!DOCTYPE html>
<html lang="en">

    <!-- stella-orre/projects-classic.html  30 Nov 2019 03:50:50 GMT -->
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

    <body>

        <div class="page-wrapper">
            <!-- Preloader -->
            <div class="preloader"></div>

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
                                        <li><a href="index.html">Accueil</a>
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

            <!--Page Title-->
            <section class="page-title" style="background-image:url(${pageContext.request.contextPath}/resources/images/background/action.jpg)">
                <div class="auto-container">
                    <h2>Liste des actions</h2>
                    <ul class="page-breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/"><%=p.getNom()%></a></li>
                        <li><a href="${pageContext.request.contextPath}/liste_plateau?idProjet=<%=p.getIdProjet()%>"><%=pl.getNom()%></a></li>
                        <li><a href="${pageContext.request.contextPath}/liste_scene?idPlateau=<%=pl.getIdPlateau()%>"><%=sc.getNom()%></a></li>
                        <li>Actions</li>
                    </ul>
                </div>
            </section>
            <!--End Page Title-->

            <!-- Portfolio Page Section -->
            <section class="portfolio-page-section">
                <div class="auto-container">

                    <div class="row clearfix">

                        <%for (Action a : la) {%>
                        <!-- Service Block -->
                        <div class="service-block-two col-lg-4 col-md-6 col-sm-12">
                            <div class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <div class="content">
                                    <div class="icon-box">
                                        <span class="icon flaticon-play-button"></span>
                                    </div>
                                    <h3><a href="${pageContext.request.contextPath}/ajout_action?idAction=<%=a.getIdAction()%>"><%=a.getNom()%></a></h3>
                                    <div class="text"><strong>Scenario : </strong> <%=a.getScenario()%></div>
                                    <a href="${pageContext.request.contextPath}/ajout_action?idAction=<%=a.getIdAction()%>" class="read-more">Détails</a>
                                </div>
                            </div>
                        </div>
                        <%}%>

                        <div id="myModal" class="modal">
                            <!-- Modal content -->
                            <div class="modal-content" style="position: absolute;">
                                <span class="close">&times;</span>
                                <div class="billing-details">
                                    <div class="shop-form">
                                        <form method="get" action="${pageContext.request.contextPath}/insert_action">
                                            <div class="row clearfix">
                                                <div class="form-group" style="text-align: center;">
                                                    <h3 style="margin-left: 170px;">Scenario</h3>
                                                    <br/>
                                                    <input style="margin-left: 100px;" type="text" name="nom" placeholder="Nom action">
                                                    <br/>
                                                    <input style="margin-left: 100px;" type="text" name="scenario" placeholder="Scenario">
                                                    <input type="hidden" name="idScene" value=<%=sc.getIdScene()%>>
                                                    <br/>
                                                    <button type="submit" class="theme-btn btn-style-one" style="float: right;"><span class="txt">Valider</span></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="service-block-two col-lg-4 col-md-6 col-sm-12">
                            <div class="inner-box wow fadeInRight" data-wow-delay="300ms" data-wow-duration="1500ms">
                                <div class="content"  id="myBtn">
                                    <div class="icon-box">
                                        <span class="icon flaticon-plus"></span>
                                    </div>
                                    <h3><a href="#">Nouvelle action</a></h3>
                                    <div class="text">Créer une nouvelle action pour "<strong><%=sc.getNom()%></strong>"</div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Story Section -->

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
        <script src="${pageContext.request.contextPath}/resources/js/owl.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/wow.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/mixitup.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/appear.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scrollbar.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
        <script>
            // Get the modal
            var modal = document.getElementById("myModal");

            // Get the button that opens the modal
            var btn = document.getElementById("myBtn");

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks on the button, open the modal
            btn.onclick = function () {
                modal.style.display = "block";
            }

            // When the user clicks on <span> (x), close the modal
            span.onclick = function () {
                modal.style.display = "none";
            }

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
    </body>

    <!-- stella-orre/projects-classic.html  30 Nov 2019 03:51:15 GMT -->
</html>