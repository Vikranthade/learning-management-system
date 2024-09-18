<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Study Materials</title>
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
        
       
    
    <style>
    html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

/* ---------------------------------------------------------- Main css -------------------------------------------------------------*/
body{
    min-height: 100vh;
}
/* ------------------------------------------------- for mobiles -------------------------------------------------------------------- */
@media(max-width: 900px){
    /* ---------------------------------- NAV BAR ---------------------------- */
    .nav-bar{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .nav1{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .icon-about{
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 0.5em;
        padding: 1em;
    }
    .nav1 a{
        margin-top: 0.5em;
        padding: 1em;
        border-bottom: 1px solid #adb5bd;
        color: #adb5bd;
        font-size: 1em;
        text-decoration: none;
        transform: translateY(103px);
    }
    .nav1 input{
        margin-top: 0.5em;
        border: none;
        border-bottom: 1px solid #adb5bd;
        padding: 0.8em 1em;
        font-size: 1em;
    }
    .nav1 input::placeholder{
        font-family: 'Roboto', sans-serif;
        color: #adb5bd;
        font-size: 1em;
    }
    input:focus, textarea:focus, select:focus{
        outline: none;
    }
    .nav-bar h3{
        margin-top: 0.5em;
        /* border-bottom: 1px solid #adb5bd; */
        padding: 0.8em 1em;
        font-size: 1em;
        font-weight: bold;
        transform: translateY(-103px);
    }
    .material-icons-outlined{
        color: #adb5bd;
        size: 2px;
        margin-right: 1em;
    
    }
    .icon-about a{
        text-decoration: none;
        color: #adb5bd;
        font-size: 1em;
        padding-left: 1em;
    }

    /* ------------------------- main book store ---------------------------- */
    main{
        margin-top: 1em;
        font-family: 'Noto Sans JP', sans-serif;
    }
    .books{
        display: flex;
        flex-direction: row;
        background-color: #cbb5e2;
        border-radius: 10px;
        margin-bottom: 3em;
        box-shadow: rgba(0, 0, 0, 0.25) 0px 25px 50px -12px;
    }
    .books:nth-of-type(2){
        background-color: #fbadaf;
    }
    .books:nth-of-type(3){
        background-color: #a4e0eb;
    }
    .books:nth-of-type(4){
        background-color: #fdca95;
    }
    .book-img{
        width: 100%;
        max-width: 1000px;
        margin: 1.5em;
        border-radius: 3px;
        transition: transform 1s;
        box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
    }
    .book-img:hover{
        transform: scale(1.05);
    }
    .descp{
        margin: 1.5em;
        padding: 1em;
        
    }
    .book-name{
        font-weight: bold;
        padding-bottom: 0.5em;
        font-size: 1.1em;
        letter-spacing: 1px;
        color: white;
    }
    .author{
        padding-bottom: 0.5em;
        font-size: 1.1em;
        letter-spacing: 1px;
        color: white;
    }
    .rating{
        padding-bottom: 1.2em;
        font-size: 1em;
        letter-spacing: 1px;
        color: white;
    }
    .info{
        font-size: 1em;
        letter-spacing: 1px;
        color: white;
    }
    .descp button{
        margin-top: 1em;
        background: none;
        border: none;
        color: #cbb5e2;
        background-color: white;
        padding: 0.6em 1.5em;
        font-size: 1em;
        border-radius: 20px;
        font-weight: bolder;
    }
    .descp button:hover{
        color: #a790f2;
    }
    #b1{
        color: #fbadaf;
    }
    #b1:hover{
        color: #ff6e9f;
    }
    #b2{
        color: #a4e0eb;
    }
    #b2:hover{
        color: #62cdec;
    }
    #b3{
        color: #fdca95;
    }
    #b3:hover{
        color: #fb9124;
    }

}






/*--------------------------------------------------------------- fOR PC AND LAPTOPS -------------------------------------------- */
@media(min-width: 900px){
    /* ----------------------------------------------------- Navbar ---------------------------------------------------------- */
    .nav-bar{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
    }
    .nav1{
        display: flex;
        flex-direction: row;
        margin-left: 1em;
        margin-bottom: 1em;
        margin-top: 1em;
    }
    .nav1 a{
        padding: 1em;
        border: none;
        border-right: 1px solid #adb5bd;
        color: #adb5bd;
        font-size: 1em;
        text-decoration: none;
    }
    .nav1 input{
        border: none;
        margin-left: 0.5em;
        padding: 0.8em 1em;
        font-size: 1em;
    }
    .nav1 input::placeholder{
        font-family: 'Roboto', sans-serif;
        color: #adb5bd;
        font-size: 1em;
    }
    input:focus, textarea:focus, select:focus{
        outline: none;
    }
    .nav-bar h3{
        padding: 0.8em 1em;
        margin-left: 1em;
        margin-bottom: 1em;
        margin-top: 1em;
        font-size: 1em;
        font-weight: bold;
    }
    .icon-about{
        display: flex;
        align-items: center;
    }
    .material-icons-outlined{
        color: #adb5bd;
        size: 2px;
        margin-right: 1em;
    
    }
    .icon-about a{
        margin-right: 2em;
        text-decoration: none;
        color: #adb5bd;
        font-size: 1em;
        border-left: 1px solid #adb5bd;
        padding-left: 1em;
    }

    /* ------------------- MAIN BOOKS ---------------------------------- */
    main{
        font-family: 'Noto Sans JP', sans-serif;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: space-evenly;
        align-items: center;
    }
    .books{
        display: flex;
        flex-direction: row;
        width: 100%;
        max-width: 1300px;
        justify-content: space-evenly;
        background-color: #cbb5e2;
        border-radius: 10px;
        margin-bottom: 3em;
        box-shadow: rgba(0, 0, 0, 0.25) 0px 25px 50px -12px;
    }
    .books:nth-of-type(2){
        background-color: #fbadaf;
    }
    .books:nth-of-type(3){
        background-color: #a4e0eb;
    }
    .books:nth-of-type(4){
        background-color: #fdca95;
    }
      .books:nth-of-type(6){
        background-color: #fbadaf;
    }
    .books:nth-of-type(7){
        background-color: #a4e0eb;
    }
    .books:nth-of-type(8){
        background-color: #fdca95;
    }
      .books:nth-of-type(10){
        background-color: #fbadaf;
    }
    .books:nth-of-type(11){
        background-color: #a4e0eb;
    }
    .books:nth-of-type(12){
        background-color: #fdca95;
    }
    .book-img{
        width: 100%;
        max-width: 200px;
        border-radius: 3px;
        transition: transform 1s;
        margin: 1.5em;
        box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
    }
    .book-img:hover{
        transform: scale(1.05);
    }
    .descp{
        margin: 1.5em;
        padding: 1em;
        
    }
    .book-name{
        font-weight: bold;
        padding-bottom: 0.5em;
        font-size: 1.1em;
        letter-spacing: 1px;
        color: white;
    }
    .author{
        padding-bottom: 0.5em;
        font-size: 1.1em;
        letter-spacing: 1px;
        color: white;
    }
    .rating{
        padding-bottom: 1.2em;
        font-size: 1em;
        letter-spacing: 1px;
        color: white;
    }
    .info{
        font-size: 1em;
        letter-spacing: 1px;
        color: white;
    }
    .descp button{
        margin-top: 1em;
        background: none;
        border: none;
        color: #cbb5e2;
        background-color: white;
        padding: 0.6em 1.5em;
        font-size: 1em;
        border-radius: 20px;
        font-weight: bolder;
    }
    .descp button:hover{
        color: #a790f2;
    }
    #anchorstyle2{
        color: #fbadaf;
    }
    #anchorstyle2:hover{
        color: #ff6e9f;
    }
    #anchorstyle3{
        color: #a4e0eb;
    }
    #anchorstyle3:hover{
        color: #62cdec;
    }
    #anchorstyle4{
        color: #fdca95;
    }
    #anchorstyle4:hover{
        color: #fb9124;
    }
    #anchorstyle1{
    	color:#cbb5e2;
    	font:16px;
    }
    #anchorstyle1:hover{
    color: #7F38C7;
    }


    

}
.mb{
margin-top : 3em;
}
    
    </style>

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
                
<div class="mb">
 <div class="books">
            <div>
                <img src="assets/images/1021_Front.webp" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Introduction to JAVA Programming</h2>
                <h3 class="author">by IIT Kharagpur</h3>
                <h3 class="rating">8.5 rating</h3>
                <p class="info">
                    Introduction to Programming Using Java is a free introductory computer programming language.
                </p>
                
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle1' href="assets/images/Introduction to Java Programming.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/91mCaQPzqUL._AC_UF1000,1000_QL80_.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Data Structures</h2>
                <h3 class="author">by  Robert Lafore</h3>
                <h3 class="rating">9.78 rating</h3>
                <p class="info">
                    Readers of all ages and walks of life have drawn inspiration from Elizabeth
                    Gilberts books.
                </p>
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle2' href="assets/images/Data_Structures_and_Algorithms_in_Java.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/71SnIfxI32L._AC_UF1000,1000_QL80_.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Machine Learning</h2>
                <h3 class="author">by  Alex Smola and S.V.N. Vishwanathan</h3>
                <h3 class="rating">8.987 rating</h3>
                <p class="info">
                    In Tokyo, sixteen-year-old Nao has decided theres only one escape from her aching loneliness
                    
                </p>
               
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle3' href="assets/images/MachineLearning.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/81v4U2tdJXL._AC_UF1000,1000_QL80_.jpg"
                    alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Artificial Intelligence</h2>
                <h3 class="author">by HOWIE BAUM</h3>
                <h3 class="rating">9.12 rating</h3>
                <p class="info">
                    The novel was inspired by a youthful romance Fitzgerald had with socialite Ginevra King 
                </p>
                
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle4' href="assets/images/ARTIFICIAL INTELLIGENCEr.pdf">See the Book</a></button>
            
            </div>
        </div>
        
        
        
        <div class="books">
            <div>
                <img src="assets/images/41doNyzJvWL.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name"> Software Development Life Cycle (SDLC)</h2>
                <h3 class="author">by SCSVMW</h3>
                <h3 class="rating">8.76 rating</h3>
                <p class="info">
                    Introduction to Programming Using Java is a free introductory computer programming language.
                </p>
                
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle1' href="assets/images/SOFTWARE ENGINEERING_course_material.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/812hyonbvfL._AC_UF1000,1000_QL80_.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Data Science</h2>
                <h3 class="author">by  S.R.DAS</h3>
                <h3 class="rating">7.78 rating</h3>
                <p class="info">
                    Readers of all ages and walks of life have drawn inspiration from Elizabeth
                    Gilberts books.
                </p>
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle2' href="assets/images/DSA_Book.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/513QON5+E8L.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Cyber Security</h2>
                <h3 class="author">by Jeetendra Pandey</h3>
                <h3 class="rating">8.987 rating</h3>
                <p class="info">
                    In Tokyo, sixteen-year-old Nao has decided theres only one escape from her aching loneliness
                    
                </p>
               
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle3' href="assets/images/Introduction-cyber-security.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/51eXOgLreNL.jpg"
                    alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Computer Networks</h2>
                <h3 class="author">by Mallareddy University</h3>
                <h3 class="rating">6.17 rating</h3>
                <p class="info">
                    The novel was inspired by a youthful romance Fitzgerald had with socialite Ginevra King 
                </p>
                
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle4' href="assets/images/COMPUTER NETWORKS NOTES.pdf">See the Book</a></button>
            
            </div>
        </div>
        
        
        
        
        <div class="books">
            <div>
                <img src="assets/images/81s8p8vq14L._AC_UF1000,1000_QL80_.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Optomerty</h2>
                <h3 class="author">by Ministry of Health and Family Welfare 
Allied Health Section</h3>
                <h3 class="rating">9.59 rating</h3>
                <p class="info">
                    Introduction to Programming Using Java is a free introductory computer programming language.
                </p>
                
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle1' href="assets/images/Model_Curriculum_Handbook_Optome.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/51OX+dcz66L._AC_UF1000,1000_QL80_.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Anasthesia</h2>
                <h3 class="author">by Oxford University Hospitals</h3>
                <h3 class="rating">7.68 rating</h3>
                <p class="info">
                    Readers of all ages and walks of life have drawn inspiration from Elizabeth
                    Gilberts books.
                </p>
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle2' href="assets/images/13762Panaesthesia.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/Quality-Assurance-in-Radiology-Curve-1-Copy-scaled.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Radiology</h2>
                <h3 class="author">by D.R.Dance and S.Christofides
 </h3>
                <h3 class="rating">8.987 rating</h3>
                <p class="info">
                    In Tokyo, sixteen-year-old Nao has decided theres only one escape from her aching loneliness
                    
                </p>
               
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle3' href="assets/images/Radiology.pdf">See the Book</a></button>
            
            </div>
        </div>

        <div class="books">
            <div>
                <img src="assets/images/forensic-science-9781780748245_hr.jpg"
                    alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Forensic Science</h2>
                <h3 class="author">by Jay Siegel</h3>
                <h3 class="rating">7.25 rating</h3>
                <p class="info">
                    The novel was inspired by a youthful romance Fitzgerald had with socialite Ginevra King 
                </p>
                
                <button id='b1' type="submit" target="_blank"><a id='anchorstyle4' href="assets/images/forensic.pdf">See the Book</a></button>
            
            </div>
        </div>
        


</div>



                

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