<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.*" %>
<%@ page import="service.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Template Mo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Digital Academy</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lightbox.css">
    <style>
       #top {
            background-image: url('https://images.pexels.com/photos/7303151/pexels-photo-7303151.jpeg?cs=srgb&dl=pexels-cup-of-couple-7303151.jpg&fm=jpg');
            background-size: cover;
            background-position: center;
        }
        .img{
        	width:80%;
        	height:160px;
        }
        .image-container {
    		display: flex; 
    		margin-top:20px;
    		margin-left:20px;
    		padding:20px;
		}
		.dd1{
			width:18%;
		}
		.knockout {
	
	vertical-align: middle;
	text-align: center;
	font-size:35px;
	color: blue;
	color: #fff;
	font-weight:bold;
	background: linear-gradient(110deg, #e4cc16 33%, rgba(0, 0, 0, 0) 33%), linear-gradient(110deg, #069966 34%, #069966 34%);
	background-size: 400%;
	 -webkit-text-fill-color: transparent;
  -webkit-background-clip: text;
}
.knockout{

		text-align:center;
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

.lanimg{
width:300px;
height:300px;


}
.l1 {margin-top:20px;text-align:center;margin-bottom:20px;}

#meetings{
background: linear-gradient(0deg, rgba(100,198,208,1) 5%, rgba(236,217,204,1) 89%);

}

.language-link:hover {
    color: red !important;
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

     <%
    	String name=(String)session.getAttribute("username");
    %>

    <!-- ***** Header Area Start ***** -->
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
    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 style="color:black">Object Oriented Programming Courses</h2>
                   
                </div>
            </div>
        </div>
    </section>


    <section class="meetings-page" id="meetings">
        <div class="container">
            <div class="row">
            
            
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="meeting-single-item">

                                <div class="down-content" style="margin-top:-100px">
                                  <h4>Object Oriented Programming Courses Content</h4>
                                  <ul style="list-style-type: square; padding:20px;">
                                  <%
                                  int count=1;
                                  ArrayList<Content> onelist=(ArrayList<Content>)session.getAttribute("onelist");
                                  if(onelist!=null){
                                	  for(Content cc:onelist){
                                  %>
                                  
                                 <li style="margin-top:10px">
                                 	<%=count %>.
								    <a href="contentshow.jsp?name=<%= cc.getName() %>&ctype=<%= cc.getCtype() %>" style="color: black">
									    <%= cc.getName() %>
									</a>

								    <hr style="width:50%">
								</li>
                                  
                                <%
                                	count++;
                                	  }
                                  }
                                %>
                                </ul>
                                    </div>
                                    
                                </div>
                            </div>
                            
                        </div>

                        <div class="col-lg-12">
                            <div class="main-button-red" style="margin-left:85%; margin-top:50px;width:300px;height:60px;">
                                <a href="/DigitalAcademy/view/C++home2.jsp">Back to OOP Course</a>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-6" style="margin-top:-100px">
                <img src="https://cdn.kobo.com/book-images/d945480f-53f6-4770-84ef-ffbe557a6f7f/1200/1200/False/mastering-c-5.jpg" alt="Image" class="section-image" style="width: 100%; height: 690px;">
            </div>
                </div>
                
            </div>
    
         <div class="footer">
      <p style="color:black">Copyright © 2024 Digital Academy. All Rights Reserved. 
          <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates" style="color:red;font-weight:bold;">Digital Academy Team</a></p>
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
            var direction = section.replace(/#/, ''),
                reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                reqSectionPos = reqSection.offset().top - 0;

            if (isAnimate) {
                $('body, html').animate({
                    scrollTop: reqSectionPos
                }, 800);
            } else {
                $('body, html').scrollTop(reqSectionPos);
            }

        };

        var checkSection = function checkSection() {
            $('.section').each(function() {
                var $this = $(this),
                    topEdge = $this.offset().top - 80,
                    bottomEdge = topEdge + $this.height(),
                    wScroll = $(window).scrollTop();
                if (topEdge < wScroll && bottomEdge > wScroll) {
                    var currentId = $this.data('section'),
                        reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                    reqLink.closest('li').addClass('active').
                    siblings().removeClass('active');
                }
            });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function(e) {
            e.preventDefault();
            showSection($(this).attr('href'), true);
        });

        $(window).scroll(function() {
            checkSection();
        });
    </script>
    
     <!-- Ensure jQuery is loaded before your custom JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>

</body>

</html>
