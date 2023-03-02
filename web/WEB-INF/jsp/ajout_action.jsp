<%@page import="model.Geste"%>
<%@page import="model.Emotion"%>
<%@page import="model.Acteur"%>
<%@page import="java.util.List"%>
<%@page import="model.V_details_action"%>
<%@page import="model.Projet"%>
<%@page import="model.Plateau"%>
<%@page import="model.Scene"%>
<%@page import="model.Action"%>
<%
    Action a = (Action) request.getAttribute("a");
    Scene sc = (Scene) request.getAttribute("sc");
    Plateau pl = (Plateau) request.getAttribute("pl");
    Projet p = (Projet) request.getAttribute("p");
    List<V_details_action> lda = (List<V_details_action>) request.getAttribute("lda");
    int num = 1;
    List<Acteur> lac = (List<Acteur>) request.getAttribute("lac");
    List<Emotion> le = (List<Emotion>) request.getAttribute("le");
    List<Geste> lg = (List<Geste>) request.getAttribute("lg");
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
                    <h2>Action</h2>
                    <ul class="page-breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/"><%=p.getNom()%></a></li>
                        <li><a href="${pageContext.request.contextPath}/liste_plateau?idProjet=<%=p.getIdProjet()%>"><%=pl.getNom()%></a></li>
                        <li><a href="${pageContext.request.contextPath}/liste_scene?idPlateau=<%=pl.getIdPlateau()%>"><%=sc.getNom()%></a></li>
                        <li><a href="${pageContext.request.contextPath}/liste_action?idScene=<%=sc.getIdScene()%>"><%=a.getNom()%></a></li>
                        <li>Actions</li>
                    </ul>
                </div>
            </section>
            <!--End Page Title-->

            <!-- Portfolio Page Section -->
            <section class="portfolio-page-section">
                <div class="auto-container">

                    <div class="row clearfix">

                        <!-- Testimonial Block -->
                        <div class="testimonial-block" style="width: 1200px;">
                            <div class="inner-box">
                                <div class="content">
                                    <form action="${pageContext.request.contextPath}/update_action" method="get">
                                        <div class="image-outer" style="margin-left: 20px;">
                                            <div class="icon-box">
                                                <span class="icon flaticon-unlink"></span>
                                            </div>
                                        </div>
                                        <div id="textscenario" class="title" style="text-align: center;">"<%=a.getScenario()%>"</div>
                                        <div id="inputscenario" class="title" style="text-align: center;display: none;"><input type="text" name="scenario" value="<%=a.getScenario()%>" style="width:300px;color:burlywood;"></div>
                                        <div class="icon-box" style="float: right;" id="changescenario">
                                            <span class="icon flaticon-settings" onclick="change(0);"></span>
                                        </div>
                                        <div style="float: right;display: none;" id="buttonscenario">
                                            <input type="hidden" name="idAction" value="<%=a.getIdAction()%>">
                                            <input type="submit" value="valider">
                                            <input type="reset" id="resetscenario" style="display: none;">
                                            </form>
                                            <a onclick="rechange(0);">Annuler</a>
                                        </div>
                                </div>
                            </div>
                            <br/>
                        </div>

                        <%for (V_details_action da : lda) {%>
                        <!-- Testimonial Block -->
                        <div class="testimonial-block" style="width: 1200px;">
                            <div class="inner-box">
                                <div class="content">
                                    <form action="${pageContext.request.contextPath}/update_details_action" method="get">
                                        <div class="image-outer">
                                            <div class="image">
                                                <img src="${pageContext.request.contextPath}/resources/images/resource/<%=da.getNomImage()%>" alt="" />
                                            </div>
                                        </div>
                                        <h3><%=da.getActeur()%></h3>
                                        <div class="title"><%=da.getEmotion()%> et <%=da.getGeste()%></div>
                                        <div id="textscenario<%=num%>" class="text">"<%=da.getPhrase()%>"</div>
                                        <div id="inputscenario<%=num%>" class="text" style="display: none;"><input type="text" name="phrase" value="<%=da.getPhrase()%>" style="width:1000px;color:saddlebrown;"></div>
                                        <div class="icon-box" style="float: right;" id="changescenario<%=num%>">
                                            <span class="icon flaticon-settings" onclick="change(<%=num%>);"></span>
                                        </div>
                                        <div style="float: right;display: none;" id="buttonscenario<%=num%>">
                                            <input type="hidden" name="idAction" value="<%=da.getIdAction()%>">
                                            <input type="hidden" name="idDetails_action" value="<%=da.getIdDetails_action()%>">
                                            <input type="submit" value="valider">
                                            <input type="reset" id="resetscenario<%=num%>" style="display: none;">
                                            </form>
                                            <a onclick="rechange(<%=num%>);">Annuler</a>
                                        </div>
                                </div>
                            </div>
                            <br/>
                        </div>
                        <%num++;%>
                        <%}%>

                        <form action="${pageContext.request.contextPath}/insert_details_action" method="get">
                            <div class="testimonial-block" style="margin-top: 50px;">
                                <div class="inner-box">
                                    <div class="content">
                                        <div class="image-outer" style="margin-left: 20px;">
                                            <div class="icon-box">
                                                <span class="icon flaticon-plus"></span>
                                            </div>
                                        </div>
                                        <input type="hidden" name="idAction" value="<%=a.getIdAction()%>">
                                        <h3>
                                            <select name="idActeur">
                                                <option>Selectionner l'acteur/actrice</option>
                                                <%for (Acteur ac : lac) {%>
                                                <option value="<%=ac.getIdActeur()%>"><%=ac.getNom()%></option>
                                                <%}%>
                                            </select>
                                        </h3>
                                        <br/>
                                        <div class="title">
                                            <select name="idEmotion">
                                                <option>Selectionner l'émotion</option>
                                                <%for (Emotion e : le) {%>
                                                <option value="<%=e.getIdEmotion()%>"><%=e.getNom()%></option>
                                                <%}%>
                                            </select>
                                            <select name="idGeste">
                                                <option>Selectionner le geste</option>
                                                <%for (Geste g : lg) {%>
                                                <option value="<%=g.getIdGeste()%>"><%=g.getNom()%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="text"></div>
                                        <br/>
                                        <div><textarea name="phrase" placeholder="Texte du personnage" style="width: 500px;background-color: gainsboro;border-radius: 5%;text-align: center;"></textarea></div>
                                        <input type="submit" class="submit-btn" style="float: right; background-color: burlywood;" value="Ajouter">
                                    </div>
                                </div>
                            </div>
                        </form>

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
        function change(num) {
            if (num == 0) {
                document.getElementById("textscenario").style.display = 'none';
                document.getElementById("changescenario").style.display = 'none';
                document.getElementById("inputscenario").style.display = 'block';
                document.getElementById("buttonscenario").style.display = 'block';
            } else {
                document.getElementById("textscenario" + num).style.display = 'none';
                document.getElementById("changescenario" + num).style.display = 'none';
                document.getElementById("inputscenario" + num).style.display = 'block';
                document.getElementById("buttonscenario" + num).style.display = 'block';
            }
        }
        function rechange(num) {
            if (num == 0) {
                document.getElementById("resetscenario").click();
                document.getElementById("textscenario").style.display = 'block';
                document.getElementById("changescenario").style.display = 'block';
                document.getElementById("inputscenario").style.display = 'none';
                document.getElementById("buttonscenario").style.display = 'none';
            } else {
                document.getElementById("resetscenario" + num).click();
                document.getElementById("textscenario" + num).style.display = 'block';
                document.getElementById("changescenario" + num).style.display = 'block';
                document.getElementById("inputscenario" + num).style.display = 'none';
                document.getElementById("buttonscenario" + num).style.display = 'none';
            }
        }
        </script>
    </body>

    <!-- stella-orre/projects-classic.html  30 Nov 2019 03:51:15 GMT -->
</html>