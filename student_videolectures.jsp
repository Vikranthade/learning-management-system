<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Video Lectures</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
        <link rel="stylesheet" href="assets/css/gijgo.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/animated-headline.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/courses.css">

    </head>

    <body>

        <%
		if(session.getAttribute("student") == null)									// check if admin is already student in to the system
		{
			response.sendRedirect("student_login.jsp");								// if not logged in, take student to login page
		}
%>

            <!-- ? Preloader Start -->
            <div id="preloader-active">
                <div class="preloader d-flex align-items-center justify-content-center">
                    <div class="preloader-inner position-relative">
                        <div class="preloader-circle"></div>
                        <div class="preloader-img pere-text">
                            <img src="assets/img/logo/loder1.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Preloader Start -->
            <header>
                <!-- Header Start -->
                <div class="header-area header-transparent">
                    <div class="main-header ">
                        <div class="header-bottom  header-sticky">
                            <div class="container-fluid">
                                <div class="row align-items-center">
                                    <!-- Logo -->
                                    <div class="col-xl-2 col-lg-2">
                                        <div class="logo">
                                            <a href="index.jsp"><img src="assets/img/logo/logo1.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-xl-10 col-lg-10">
                                        <div class="menu-wrapper d-flex align-items-center justify-content-end">
                                            <!-- Main-menu -->
                                            <div class="main-menu d-none d-lg-block">
                                                <nav>
                                                    <ul id="navigation">
                                                        <li class="active"><a href="student_dashboard.jsp">Home</a></li>
                                                        <li><a href="#">Classroom</a>
                                                            <ul class="submenu">
                                                                <li><a href="student_videolectures.jsp">Video Lectures</a></li>
                                                                <li><a href="student_studymaterial.jsp">Study Materials</a></li>
                                                                <li><a href="quiz1.jsp">Daily Test</a></li>
                                                                <li><a href="https://script.google.com/a/macros/cutmap.ac.in/s/AKfycbxfHtaehW3zkG3kHlf6DvcFpStggeZuLePdSaH8gL0z/dev">Assignments</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="studentlivesession.jsp">24/7 virtual Study Rooms</a></li>
                                                        <li><a href="home2.jsp">Q & A Forum</a></li>
                                                        <li><a href="Aboutus.jsp">About Us</a></li>
                                                        <!-- Button -->
                                                        <li class="button-header"><a href="student_logout.jsp" class="btn btn3">Log Out</a></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Mobile Menu -->
                                    <div class="col-12">
                                        <div class="mobile_menu d-block d-lg-none"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Header End -->
            </header>
            <main>
                <!--? slider Area Start-->
                <section class="slider-area ">
                    <div class="slider-active">
                        <!-- Single Slider -->
                        <div class="single-slider slider-height d-flex align-items-center">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-6 col-lg-7 col-md-12">
                                        <div class="hero__caption">
                                            <h1 data-animation="fadeInLeft" data-delay="0.2s">Welcome<br>
                                                <% out.println(session.getAttribute("student")); %>
                                            </h1>
                                            <p data-animation="fadeInLeft" data-delay="0.4s">Attend video lectures, skim through study materials and ask doubts at one place.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                        <div class="services-area">
            <div class="container">
                <div class="row justify-content-sm-center">
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon1.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>Study Materials</h3>
                                <p>All the books and tutorials at one place.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon2.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>Live Session</h3>
                                <p>Attend Live Lectures and Doubt Sessions</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon3.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>Assignments</h3>
                                <p>Chasing deadlines and acing assignments</p>
                            </div>
                        </div>
                    </div>
                </div>
                
<section class="courses">

   <h1 class="heading">our courses</h1>

   <div class="box-container">

      <div class="box">
         <div class="tutor">
            <img src="assets/images/Telusko.webp" alt="">
            <div class="info">
               <h3>Telusuko</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/Java.webp" alt="">
            <span>15 videos</span>
         </div>
         <h3 class="title">Complete Programming in Java Tutorials</h3>
         <a href="java.jsp" class="inline-btn">view playlist</a>
      </div>

      <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.47 AM.jpeg" alt="">
            <div class="info">
               <h3>Freecodecamp</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/d7ccc9fc448341f11307ae5aecbb0235.png" alt="">
            <span>10 videos</span>
         </div>
         <h3 class="title">Complete Machine Learning Tutorials</h3>
         <a href="MachineLearning.jsp" class="inline-btn">view playlist</a>
      </div>

      <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.47 AM (4).jpeg" alt="">
            <div class="info">
               <h3>SimpliLearn</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/360_F.jpg" alt="">
            <span>10 videos</span>
         </div>
         <h3 class="title">Complete Artificial Intelligence Tutorials</h3>
         <a href="AI.jsp" class="inline-btn">view playlist</a>
      </div>

      <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.47 AM.jpeg" alt="">
            <div class="info">
               <h3>Freecodecamp</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/technology-science-logo-with-data-concept-vector.jpg" alt="">
            <span>10 videos</span>
         </div>
         <h3 class="title">Complete DataScience Tutorials</h3>
         <a href="DataScience.jsp" class="inline-btn">view playlist</a>
      </div>

      <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.47 AM (4).jpeg" alt="">
            <div class="info">
               <h3>SimpliLearn</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/cyber-security-logo-design-template-free-vector.jpg" alt="">
            <span>10 videos</span>
         </div>
         <h3 class="title">Complete Cyber Security Tutorials</h3>
         <a href="cyber.jsp" class="inline-btn">view playlist</a>
      </div>

      <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.47 AM (2).jpeg" alt="">
            <div class="info">
               <h3>Kunal Kushwaha</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/computer-networking.png" alt="">
            <span>10 videos</span>
         </div>
         <h3 class="title">Complete Networking Tutorials</h3>
         <a href="computerNetworking.jsp" class="inline-btn">view playlist</a>
      </div>

      <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.47 AM.jpeg" alt="">
            <div class="info">
               <h3>Freecodecamp</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/pngegg (1).png" alt="">
            <span>10 videos</span>
         </div>
         <h3 class="title">Complete HTML Tutorials</h3>
         <a href="html.jsp" class="inline-btn">view playlist</a>
      </div>

      <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.47 AM (1).jpeg" alt="">
            <div class="info">
               <h3>MicrosoftResearch</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/images (1).png" alt="">
            <span>10 videos</span>
         </div>
         <h3 class="title">Complete BioScience Tutorials</h3>
         <a href="BioScience.jsp" class="inline-btn">view playlist</a>
      </div>

      <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.47 AM (3).jpeg" alt="">
            <div class="info">
               <h3>Forensic Science by Priyanshi</h3>
               <span>21-10-2022</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/forensic-science.png" alt="">
            <span>10 videos</span>
         </div>
         <h3 class="title">Complete Forensic Tutorials</h3>
         <a href="Forensic.jsp" class="inline-btn">view playlist</a>
      </div>
            <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.22.46 AM.jpeg" alt="">
            <div class="info">
               <h3>Medicosis Perfectionalis</h3>
               <span>12-06-2024</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/360_F_532419979_oXeMuPMd6BGn4hGGRTtbiGKEOMdFbJ5V.jpg" alt="">
            <span>15 videos</span>
         </div>
         <h3 class="title">Complete Anesthesiology Tutorials</h3>
         <a href="anastecia.jsp" class="inline-btn">view playlist</a>
      </div>
                  <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.27.40 AM.jpeg" alt="">
            <div class="info">
               <h3>EyeSmart - AAO</h3>
               <span>12-06-2024</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/optometry-logo_20448-64.jpg" alt="">
            <span>15 videos</span>
         </div>
         <h3 class="title">Complete Optometry Tutorials</h3>
         <a href="opto.jsp" class="inline-btn">view playlist</a>
      </div>
                  <div class="box">
         <div class="tutor">
            <img src="assets/images/WhatsApp Image 2024-06-17 at 1.33.16 AM.jpeg" alt="">
            <div class="info">
               <h3>R.Furman Borst,M.D.</h3>
               <span>12-06-2024</span>
            </div>
         </div>
         <div class="thumb">
            <img src="assets/images/radiology-blue-gradient-concept-icon-arthritis-clinic-services-abstract-idea-thin-line-illustration-x-ray-and-densitometry-arthritis-diagnosing-isolated-outline-color-drawing-vector.jpg" alt="">
            <span>15 videos</span>
         </div>
         <h3 class="title">Complete Radiology Tutorials</h3>
         <a href="radio.jsp" class="inline-btn">view playlist</a>
      </div>

   </div>

</section>


                

            </div>
            </main>
            <footer>
                <div class="footer-wrappper footer-bg">
                    <!-- Footer Start-->
                    <div class="footer-area footer-padding">
                        <div class="container">
                            <div class="row justify-content-between">
                                <div class="col-xl-4 col-lg-5 col-md-4 col-sm-6">
                                    <div class="single-footer-caption mb-50">
                                        <div class="single-footer-caption mb-30">
                                            <!-- logo -->
                                            <div class="footer-logo mb-25">
                                                <a href="index.jsp"><img src="assets/img/logo/logo2_footer1.png" alt=""></a>
                                            </div>
                                            <div class="footer-tittle">
                                                <div class="footer-pera">
                                                    <p>CUTMAP CONNECTS</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- footer-bottom area -->
                                <div class="footer-bottom-area">
                                    <div class="container">
                                        <div class="footer-border">
                                            <div class="row d-flex align-items-center">
                                                <div class="col-xl-12 ">
                                                    <div class="footer-copy-right text-center">
                                                        <p>
                                                            Copyright &copy;
                                                            <script>
                                                                document.write(new Date().getFullYear());
                                                            </script> Team Innovators, All rights reserved
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Footer End-->
                            </div>
            </footer>
            <!-- Scroll Up -->
            <div id="back-top">
                <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
            </div>

            <!-- JS here -->
            <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
            <!-- Jquery, Popper, Bootstrap -->
            <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
            <script src="./assets/js/popper.min.js"></script>
            <script src="./assets/js/bootstrap.min.js"></script>
            <!-- Jquery Mobile Menu -->
            <script src="./assets/js/jquery.slicknav.min.js"></script>

            <!-- Jquery Slick , Owl-Carousel Plugins -->
            <script src="./assets/js/owl.carousel.min.js"></script>
            <script src="./assets/js/slick.min.js"></script>
            <!-- One Page, Animated-HeadLin -->
            <script src="./assets/js/wow.min.js"></script>
            <script src="./assets/js/animated.headline.js"></script>
            <script src="./assets/js/jquery.magnific-popup.js"></script>

            <!-- Date Picker -->
            <script src="./assets/js/gijgo.min.js"></script>
            <!-- Nice-select, sticky -->
            <script src="./assets/js/jquery.nice-select.min.js"></script>
            <script src="./assets/js/jquery.sticky.js"></script>
            <!-- Progress -->
            <script src="./assets/js/jquery.barfiller.js"></script>

            <!-- counter , waypoint,Hover Direction -->
            <script src="./assets/js/jquery.counterup.min.js"></script>
            <script src="./assets/js/waypoints.min.js"></script>
            <script src="./assets/js/jquery.countdown.min.js"></script>
            <script src="./assets/js/hover-direction-snake.min.js"></script>

            <!-- contact js -->
            <script src="./assets/js/contact.js"></script>
            <script src="./assets/js/jquery.form.js"></script>
            <script src="./assets/js/jquery.validate.min.js"></script>
            <script src="./assets/js/mail-script.js"></script>
            <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

            <!-- Jquery Plugins, main Jquery -->
            <script src="./assets/js/plugins.js"></script>
            <script src="./assets/js/main.js"></script>

    </body>

    </html>