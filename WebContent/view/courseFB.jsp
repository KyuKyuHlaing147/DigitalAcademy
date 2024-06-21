<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page import="service.*" %>
    <%@ page import="action.*" %>
     <%@ page import="java.util.*" %>
<html lang="en">
  <head>
    <title>Digital Academy</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
     <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lightbox.css">
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets2/images/fav.png" type="image/x-icon">
   <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;500&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets2/images/fav.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets2/css/style.css" />
    
    
    
    
    
    <!-- End of old CSS -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/style.css">
    <style>
    #top {

    position: relative; /* Make sure the container is positioned */

    min-height: 60vh;

    background-image: url('https://wallpaperswide.com/download/simple_workspace_desk_coffee_flowers-wallpaper-1280x768.jpg');

    background-size: cover;

    background-position: center;

}



#top::before {

    content: ""; /* Necessary for pseudo-elements */

    position: absolute; /* Position it absolutely */

    top: 0;

    left: 0;

    right: 0;

    bottom: 0;

    background-color: rgba(0, 0, 0, 0.1); /* Adjust the opacity here */

}
    
    </style>
    
    
  </head>
  <body>
		
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

    <header class="header-area header-sticky" style="background-color:white;color:black;">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                  <img src="${pageContext.request.contextPath}/assets2/images/D (3).png"  alt="img" style="width:60px;height:60px;border-radius:50%;float:left;margin-top:25px;margin-right:20px" >
                      <!-- ***** Logo Start ***** -->
                      <a href="#" class="logo" style="color:#3CF;">
                         Digital <span style="color:red">Academy</span>
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="/DigitalAcademy/view/index.jsp" style="color:black; font-weight:bold">Home</a></li>
                     
                          <li class="has-sub">
                              <a href="javascript:void(0)" style="color:black; font-weight:bold">Courses</a>
                              <ul class="sub-menu">
                                  <li><a href="/DigitalAcademy/view/subject.jsp" style="color:black; font-weight:bold">Languages</a></li>
                                  <li><a href="/DigitalAcademy/view/IT.jsp" style="color:black; font-weight:bold">Programming</a></li>
                              </ul>
                          </li>
                          
                  		 <li><a href="/DigitalAcademy/view/headersignin.jsp" style="color:black; font-weight:bold">Sign In</a></li>
                  		 <li><a href="/DigitalAcademy/view/SignUp.jsp" style="color:black; font-weight:bold">Sign Up</a></li>
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
    <!-- ***** Header Area End ***** -->


    <div class="hero-wrap hero-bread" id="top" style="background-image: url('https://d18891bkk3ccc2.cloudfront.net/wp-content/uploads/2021/09/08145124/SHO_BLOG_EEFGuideance_210908-01.jpg') ;height:400px">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          
        </div>
      </div>
    </div>


		
	<section class="ftco-section testimony-section" style="background: linear-gradient(0deg, rgba(100,198,208,1) 5%, rgba(236,217,204,1) 89%);">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
       	   
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading">FeedBack</span>
          	
          	<%
          		String cname=(String)session.getAttribute("coursename");
          	if(cname.equals("FWT")){
          		cname="Frontend Design";
          	}
          	%>
          	
          	
            <h3 class="mb-4">Our satisfied Student says for <%= cname %></h3>
        
          </div>
        </div>
        
        <div class="row ftco-animate">
             <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
        
            <% 
            HttpSession session1=request.getSession();
            @SuppressWarnings("unchecked")
            ArrayList<FeedBack> flist=(ArrayList<FeedBack>)session1.getAttribute("flist1");
            if(flist!=null){
         	   for(FeedBack f:flist){%>
         
            	 
        
              <div >
    <div class="testimony-wrap p-4 pb-5" style="height:500px">
        <div class="user-img mb-5" style="background-image: url(${pageContext.request.contextPath}/assets/images/contact2.png)">
            <div class="quote d-flex align-items-center justify-content-center">
                <h4 class="card-title"><img src="https://img.icons8.com/ultraviolet/40/000000/quote-left.png" style="width:20px;height:20px;"></h4>
            </div>
        </div>
        <div class="text text-center" >
            <p class="mb-5 pl-4 line" style="height:200px"><%= f.getFeedback() %></p>
            <p class="name">Guest</p>
        </div>
    </div>
</div>

             
        
              	<% }
            }
            
            %>
           
            
             
           
            <% 
         
            @SuppressWarnings("unchecked")
            ArrayList<FeedBack> flist2=(ArrayList<FeedBack>)session1.getAttribute("flist2");
            if(flist2!=null){
         	   for(FeedBack f2:flist2){%>
            	 
        
             <div >
    <div class="testimony-wrap p-4 pb-5" style="height:500px">
        <div class="user-img mb-5" style="background-image: url(${pageContext.request.contextPath}/assets/images/contact4.jpg)">
            <div class="quote d-flex align-items-center justify-content-center">
                <h4 class="card-title"><img src="https://img.icons8.com/ultraviolet/40/000000/quote-left.png" style="width:20px;height:20px;"></h4>
            </div>
        </div>
        <div class="text text-center" >
            <p class="mb-5 pl-4 line" style="height:200px"><%= f2.getFeedback() %></p>
            <p class="name"><%= f2.getUsername() %></p>
        </div>
    </div>
</div>

        
              	<% }
            }
            
            %>
             </div>
          </div>
             </div>
            </div>  
             
                <div class="col-lg-12" style="margin-left:45%;margin-top:30px;">
              <div class="main-button-red">
               <a href="/DigitalAcademy/view/index.jsp" style="margin-bottom:20px;">Back To Home</a>
              </div>
            </div>
           
        
    </section>



  <script src="${pageContext.request.contextPath}/js2/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/js2/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/aos.js"></script>
  <script src="${pageContext.request.contextPath}/js2/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/js2/bootstrap-datepicker.js"></script>
  <script src="${pageContext.request.contextPath}/js2/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js2?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/js2/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/js2/main.js"></script>
    
  </body>
</html>