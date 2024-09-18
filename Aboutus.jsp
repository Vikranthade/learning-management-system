<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>About Us</title>
  <style media="screen">
  
  @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body {
  min-height: 100vh;
}

/* -----------------company----------------------- */
.company {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
}

.company-info {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.img1 {
  margin: 1rem 0rem 0rem 2rem;
}

.img1 img1 {
  width: 100%;
}

.company-info {
  width: 100%;
  margin-right: 4rem;
}

.company-info span {
  font-size: 2.5rem;
  font-weight: bold;
}

.company-info span .our {
  color: #8b5aed;
}

.company-info p{
  font-size: 1.1rem;
  line-height: 1.6; /* This will increase space between lines to 1.6 times the normal line height */
            margin-bottom: 1em;
}
/* ----------------------------------------------- */
  

   * {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: Exo;
   }
   @font-face {
     font-family: Exo;
     src: url(./fonts/Exo2.0-Medium.otf);
   }
   .shaik{
     width: 100%;
     display: flex;
     justify-content: center;
     align-items: center;
     margin-bottom : 5em;
   }
   .profile-card{
     position: relative;
     font-family: sans-serif;
     width: 220px;
     height: 220px;
     background: linear-gradient(45deg, #8b5aed 0%, #78ebfc 100%);
     padding: 30px;
     border-radius: 50%;
     box-shadow: 0 0 22px #3336;
     transition: .6s;
     margin: 0 25px;
   }
   .profile-card:hover{
     border-radius: 10px;
     height: 200px;
   }
   .profile-card .img{
     position: relative;
     width: 100%;
     height: 100%;
     transition: .6s;
     z-index: 99;
   }
   .profile-card:hover .img{
     transform: translateY(-60px);
   }
   .img img{
     width: 100%;
     border-radius: 50%;
     box-shadow: 0 0 22px #3336;
     transition: .6s;
   }
   .profile-card:hover img{
     border-radius: 10px;
   }
   .caption{
     text-align:center;
     transform: translateY(-20px);
     opacity: 0;
     transition: .6s;
   }
   .profile-card:hover .caption{
     opacity: 1;
     color : #ffffff;
   }
   .caption h3{
     font-size: 21px;
     font-family: sans-serif;
   }
   .meet {
    text-align: center;
    margin-top: 20px;
    margin-bottom: 50px;
}
   .meet4 {
    text-align: center;
    margin-top: 20px;
    font-size: 48px;
}
.h2, h2 {
    font-size: 30px;
}


   .cta-container {
            background: #f8f9fa;
            padding: 40px;
            text-align: center;
            border-radius: 10px;
              width: 100%;
        max-width: 1100px;
        margin: 1.5em auto; 
        transition: transform 1s;
        box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
        margin-bottom : 5em;
    }
        }

        .cta-container h3 {
            margin-bottom: 20px;
        }

        .cta-container p {
            margin-bottom: 20px;
        }

  </style>

</head>
<body>
<h1 class="meet4">About Us</h1>
 <div class="company">
    <div class="img1">
      <img src="assets/images/about-team.jpg" alt="" />
    </div>
    <div class="company-info">
      <span>What is <span class="our">Unique and Different About Us</span></span>
      <p>
        <b>At CUTMAP CONNECTS,</b>we pride ourselves on offering a distinctive and innovative approach to online education. What sets us apart is our commitment to creating a truly immersive learning environment. Unlike other platforms, we provide a comprehensive suite of resources, including video lectures, study materials, and interactive quizzes, all designed to engage learners in a dynamic and personalized way.

<br>Moreover, our 24/7 virtual classroom and real-time Q&A forum allow for continuous interaction with instructors and peers, fostering a sense of community and active participation. This environment encourages collaborative learning and ensures that students receive timely feedback and support.

<br>Another unique aspect of our platform is the seamless integration of advanced technology, offering intuitive navigation and adaptive learning pathways tailored to each user’s individual needs. With CUTMAP CONNECTS, you experience a holistic, adaptive, and student-centered approach to education that transcends traditional learning methods, making it an exceptional choice for your academic journey.
      </p>
    </div>
  </div>
  
   <div class="cta-container">
            <h3>Become A Part Of Our Team</h3>
            <p>We are looking for a dynamic personality like you. If you are passionate about guiding and teaching students, this is the right place for you. You may join here as a teacher, trainer, motivator, or for online support. You may also contact us.</p>
            <p>Contact: 7799832950 | 7095315241</p>
            <a href="index.jsp" class="btn btn-primary">Register</a>
        </div>
    </div>


    <div class="meet">
      <h2 class="meet1">Meet Our Team</h2>
      <p class="meet2">Creative Nerds</p>
    </div>
  </div>

    <div class="shaik">
    
    
        <div class="profile-card">
            <div class="img">
                <img src="assets/images/team-1.jpg">
            </div>
            <div class="caption">
                <h3>A VIKAS</h3>
            </div>
        </div>
        <div class="profile-card">
            <div class="img">
                <img src="assets/images/team-2.jpg">
            </div>
            <div class="caption">
                <h3>K TEJA</h3>
            </div>
        </div>
        <div class="profile-card">
            <div class="img">
                <img src="assets/images/team-3.jpg">
            </div>
            <div class="caption">
                <h3>SK NAGUR</h3>
            </div>
        </div>
        <div class="profile-card">
            <div class="img">
                <img src="assets/images/team-4.jpg">
            </div>
            <div class="caption">
                <h3>S GOWTHAM</h3>
            </div>
        </div>
        <div class="profile-card">
            <div class="img">
                <img src="assets/images/team-5.jpg">
            </div>
            <div class="caption">
                <h3>E AYYAPPA</h3>
            </div>
        </div>
        <div class="profile-card">
            <div class="img">
                <img src="assets/images/team-6.jpg">
            </div>
            <div class="caption">
                <h3>A VIKRANTH</h3>
                
            </div>
        </div>
    </div>

</body>
</html>