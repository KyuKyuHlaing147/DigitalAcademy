<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.*" %>
<%@ page import="service.*" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Digital Academy</title>
<link rel="icon" href="${pageContext.request.contextPath}/assets2/images/D (2).png" type="image/x-icon"> 
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lightbox.css">

  </head>
  <style>
  		.di1{
background-color:  #FFDAC1;
text-align:center;
height:280px;
border:1px solid;
border-radius:30px;

}
#dd1{
  float: left;
 }
  		#dd2{
  		margin-left:700px;
  		float: right;
  		}
#courses{
margin-top:220px;
height:50%;
background: linear-gradient(0deg, rgba(255,218,193,1) 5%, rgba(100,198,208,1) 100%);
}  
	
 .hh{
 margin-top:20px;
 text-align:center;
 font-size:18px;
 text-shadow:2px 2px 3px lightblue;
 
 } 	
 
 	
 .knockout {
	
	vertical-align: middle;
	text-align: center;
	font-size:50pt;
	color: blue;
	color: #fff;
	background: linear-gradient(110deg, #ffeead 33%, rgba(0, 0, 0, 0) 33%), linear-gradient(110deg, #C5E7D7 34%, #88d8b0 34%);
	background-size: 400%;
	 -webkit-text-fill-color: transparent;
  -webkit-background-clip: text;
}
.knockout{

margin-left:-220px;
		animation: Gradient 5s ease infinite;
		-webkit-animation: Gradient 15s ease infinite;
		-moz-animation: Gradient 5s ease infinite;
}

@-webkit-keyframes Gradient {
	0% {
		background-position: 30% 50%
	}
	50% {
		background-position: 25% 50%
	}
	100% {
		background-position: 30% 50%
	}
	
}
  
 #contact{
 background: linear-gradient(0deg, rgba(100,198,208,1) 5%, rgba(255,218,193,1) 89%);
 border:1px solid white;
 }

.dr{
line-height:20px;
border:1px solid white;
border-radius:20px;
padding:20px;
height:450px;
}
.di2{
background: #ffdac1;
margin-top:-20px;
}
  </style>

<body style="background-color:#64c6d0;">
 <!-- Sub Header -->
  <div class="sub-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-sm-8">
          <div class="left-content">
         
            <p>Free Online Learning Platform</p>
          </div>
        </div>
        <div class="col-lg-4 col-sm-4">
          <div class="right-icons">
            <ul>
               <li><a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
      			<li><a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
      			<li><a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a></li>
      			<li><a href="https://www.linkedin.com"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
  <%
    	String name=(String)session.getAttribute("username");
  		String email=(String)session.getAttribute("usermail");
    %>
  
  
   <header class="header-area header-sticky" style="background-color:white;color:black;">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                  <img src="${pageContext.request.contextPath}/assets2/images/D (3).png"  alt="img" style="width:60px;height:60px;border-radius:50%;float:left;margin-top:15px;margin-right:20px" >
                      <!-- ***** Logo Start ***** -->
                      <a href="#" class="logo" style="color:#3CF;">
                         Digital <span style="color:red">Academy</span>
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="/DigitalAcademy/view/index2.jsp" style="color:black; font-weight:bold">Home</a></li>
                     
                          <li class="has-sub">
                              <a href="javascript:void(0)" style="color:black; font-weight:bold">Courses</a>
                              <ul class="sub-menu">
                                  <li><a href="/DigitalAcademy/view/subject2.jsp" style="color:black; font-weight:bold">Languages</a></li>
                                  <li><a href="/DigitalAcademy/view/IT2.jsp" style="color:black; font-weight:bold">Programming</a></li>
                              </ul>
                          </li>
                          
                  		<li><a href="/DigitalAcademy/view/liveteachingheader2.jsp" style="color:black; font-weight:bold">Live Teaching</a></li>
                          
                          <li class="has-sub">
                              <a href="javascript:void(0)" style="color:black; font-weight:bold">Welcome <%=name %></a>
                              <ul class="sub-menu">
                                 <li><a href="<s:url action='showprofile'/>" style="color:black; font-weight:bold">Profile</a></li>
                                  <li><a href="<s:url action='LogoutAction'/>" style="color:black; font-weight:bold">Log Out</a></li>
                  			
                              </ul>
                          </li>
                      </ul>        
                      <a class='menu-trigger' >
                          <span style="color:black;">Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
  
  <section class="section main-banner" id="top" data-section="section1">
      <video autoplay muted loop id="bg-video">
          <source src="${pageContext.request.contextPath}/assets/images/course-video.mp4" type="video/mp4" />
      </video>

      <div class="video-overlay header-text">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <div class="caption">
              <h2 class="knockout">Welcome to Digital Academy</h2>
                <h5 style="color:#FFDAC1;line-height:30px;">မိမိရဲ့ အနာဂတ်ခရီးလမ်း ကိုအကောင်းဆုံး‌ပုံဖော်ချင်သူတို့အတွက် Digital Academyက ကြိုဆိုနေပါတယ်<br>Digital Academy နဲ့အတူ သင့်ရဲ့အနာဂတ်ပန်းတိုင်ဆီသို့ လျှောက်လှမ်းလိုက်ပါ...</h5><br>
              <div class="main-button-red">
                  <div class="scroll-to-section"><a href="#contact">Join Us Now!</a></div>
              </div>
          </div>
              </div>
            </div>
          </div>
      </div>
  </section>
  <!-- ***** Main Banner Area End ***** -->

  <section class="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="owl-service-item owl-carousel">
          
            <div class="di1" >
              <div class="icon">
                <img src="${pageContext.request.contextPath}/assets/images/service-icon-01.png" alt="" style="width:50px;height:50px;margin-left:43%;margin-top:30px;margin-bottom:20px;">
              </div>
              <div class="down-content">
                <h4 style="margin-bottom:20px;">Best Education</h4>
                <p>Digital Academy သည် ဘာသာစကားလေ့လာလိုသူများနှင့် ITဘာသာရပ်များကို စိတ်ပါဝင်စားသူများအတွက် သင်တန်းများစွာကို သင်ကြားပို့ချပါသည် </p>
              </div>
            </div>
            
            <div class="di1">
              <div class="icon">
                <img src="${pageContext.request.contextPath}/assets/images/service-icon-02.png" alt="" style="width:50px;height:50px;margin-left:43%;margin-top:30px;margin-bottom:20px;">
              </div>
              <div class="down-content">
                <h4 style="margin-bottom:20px;">Best Teachers</h4>
                <p>Digital Academy တွင် သင်ကြားမှု အတွေ့အကြုံရှိပြီး ဘာသာရပ်ဆိုင်ရာ ကျွမ်းကျင်သော ဆရာ/ဆရာမများမှ စေတနာအပြည့်ဖြင့် သင်ကြားပို့ချပါသည်</p>
              </div>
            </div>
            
            <div class="di1">
              <div class="icon">
                <img src="${pageContext.request.contextPath}/assets/images/service-icon-03.png" alt="" style="width:50px;height:50px;margin-left:43%;margin-top:30px;margin-bottom:20px;">
              </div>
              <div class="down-content">
                <h4 style="margin-bottom:20px;">Best Students</h4>
                <p> Digital Academy မှ ကျောင်သားကျောင်းသူများသည် သင်ယူတတ်မြောက်ပြီးသော ပညာရပ်များဖြင့် သက်ဆိုင်ရာနယ်ပယ်များတွင် ထက်မြတ်သော ပညာရှင်များအဖြစ် ရပ်တည်နေပါသည်။</p>
              </div>
            </div>
            
            <div class="di1">
              <div class="icon">
                <img src="${pageContext.request.contextPath}/assets/images/service-icon-02.png" alt="" style="width:50px;height:50px;margin-left:43%;margin-top:30px;margin-bottom:20px;">
              </div>
              <div class="down-content">
                <h4 style="margin-bottom:20px;">Live Teaching</h4>
                <p>အမြဲတိုးတက်ပြောင်းလဲနေတဲ့ခေတ်မှာ ဘာသာစကားတွေအပြင် အမြဲဆန်းသစ်တီထွင်မှုတွေရှိတဲ့ IT ဘာသာရပ်တွေကို Digital Academy ရဲ့ online Live teaching နဲ့အတူ သင်ယူရင်း အနာဂတ်ကို တက်လှမ်းလိုက်ပါ</p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>
  
  <section class="our-courses" id="courses">
    <div class="container" >
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
            <h2 style="color:red;text-align:center;font-size:24px;margin-top:-80px;"><marquee>Our Student's Feedbacks</marquee></h2>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="owl-courses-item owl-carousel">
            <div class="item">
            <a href="showfeedback2?course=Korean">
              <img src="${pageContext.request.contextPath}/assets/images/korera.jpg" alt="Course One">
              </a>
              <div class="down-content">
              <h4 style="color:darkcyan;"> <a href="showfeedback2?course=Korean"  style="color:darkcyan;" >Korea Language</a></h4>
              </div>
            </div>
            <div class="item">
            <a href="showfeedback2?course=Japanese">
              <img src="${pageContext.request.contextPath}/assets/images/japannew.jpg" alt="Course Two">
             </a> 
              <div class="down-content">
                 <h4 style="color:darkcyan;"> <a href="showfeedback2?course=Japanese"  style="color:darkcyan;">Japanese Language</a></h4>
              </div>
            </div>
            <div class="item">
            <a href="showfeedback2?course=Chinese">
              <img src="${pageContext.request.contextPath}/assets/images/images.png" alt="">
             </a>
              <div class="down-content">
                <h4 > <a href="showfeedback2?course=Chinese"  style="color:darkcyan;">Chinese Language</a></h4>
               
              </div>
            </div>
            <div class="item">
            
              <a href="showfeedback2?course=Cpp">
    			<img src="${pageContext.request.contextPath}/assets/images/se.jpg" alt="">
			</a>

              <div class="down-content">
                 <h4 > <a href="showfeedback2?course=Cpp" style="color:darkcyan;">C++ Language</a></h4>
              </div>
            </div>
            <div class="item">
            <a href="showfeedback2?course=Database">
              <img src="${pageContext.request.contextPath}/assets/images/oracle2.jpg" alt="">
              </a>
              <div class="down-content">
              <h4 > <a href="showfeedback2?course=Database" style="color:darkcyan;">Database Language</a></h4>
              
              </div>
            </div>
            
            <div class="item">
            <a href="showfeedback?course=FWT">
              <img src="${pageContext.request.contextPath}/assets/images/d3.jpg" alt="">
              </a>
              <div class="down-content">
                    <h4 > <a href="showfeedback?course=FWT"  style="color:darkcyan;">FrontEnd Web Tech</a></h4>
               
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </section>
  
 <section class="di2">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
   		  <h1 class="mb-4" style="color:black;font-family: 'Poppins', sans-serif; font-size: 22px;font-weight: 700" >Welcome to Digital Academy</h1>
                   <p class="mb-4" style="text-align:justify">"Digital Academy" offers youths and beginners opportunity to kick-start their IT career and
to learn more about Languages.Digital Academy provides various courses,catering to free of charges option.
Futhermore, we offer online live teaching and certifications covering topics such as programming , web development and languages on our website.
Are you ready to progress with us?Browse our available course. </p>
        </div> 
        <div class="col-lg-6 align-self-center">
          <div class="video">
            <a href="https://www.youtube.com/watch?v=HndV87XpkWg" target="_blank"><img src="https://img.freepik.com/premium-photo/young-students-studying-library-background_488220-37335.jpg" alt="" style="width:600px;height:350px;margin-left:50px;border-radius:50px;margin-bottom:30px;"></a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="contact-us" id="contact">
    <div class="container" style="margin-top:-60px">
      <div class="row">
        <div class="col-lg-9 align-self-center">
          <div class="row">
            <div class="col-lg-12">
              <form id="contact" action="message2" method="post" accept-charset="UTF-8">
                <div class="row">
                  <div class="col-lg-12">
                    <h2>Let's get in touch</h2>
                  </div>
                 
                  <div class="col-lg-4">
                    <fieldset>
                      <input name="username" type="text" id="name" placeholder="YOUR NAME...*" readonly value="<%= name %>" style="color:black; font-size:14px;">
                    </fieldset>
                  </div>
                  <div class="col-lg-4">
                    <fieldset>
                    <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="YOUR EMAIL..." readonly value="<%= email %>" style="color:black; font-size:14px">
                  </fieldset>
                  </div>
                  <div class="col-lg-4">
                    <fieldset>
                     
                      <select name="course" id="name" style="border:none;border-radius:20px;height:40px; width:100%; padding-left: 20px;font-size:14px; font-family: 'Poppins', sans-serif;">
                      <option>Choose Course</option>
                      	<option value="Cpp">C++</option>
                      	<option value="Database">Database</option>
                      	<option value="FWT">Frontend Web Technology</option>
                      	<option value="Japanese">Japanese</option>
                      	<option value="Korean">Korean</option>      
                      	<option value="Chinese">Chinese</option>                   					
                      </select><br><br>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <textarea name="feedback" class="form-control" id="message" placeholder="YOUR MESSAGE..." required style="color:black; font-size:14px"></textarea>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" id="form-submit" class="button">SEND FEEDBACK </button>
                    </fieldset>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="dr">
            <ul>
              <li>
                <h6>Phone Number</h6><br>
                <span style="font-size: 14px;">+95-9688140606</span><hr>
              </li>
              <li>
                <h6>Email Address</h6><br>
                <span style="font-size: 14px;">digitalacademy@gmail.com</span><hr>
              </li>
              <li>
                <h6>Street Address</h6><br>
                <span style="font-size: 14px;">Yangon</span><hr>
              </li>
              <li>
                <h6>Website URL</h6><br>
                <span style="font-size: 14px;">www.digitalacademy.com</span>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    
    
    
    
    <div class="footer">
      <p style="color:black;">Copyright © 2024 Digital Academy. All Rights Reserved. 
          <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates" style="color:#a12c2f;font-weight:bold;">Digital Academy Team</a></p>
    </div>
  </section>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="${pageContext.request.contextPath}/assets/js/isotope.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/owl-carousel.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/lightbox.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/tabs.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/video.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/slick-slider.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>

</body>
</html>