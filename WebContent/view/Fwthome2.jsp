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
            background-image: url('https://cdn.shopify.com/s/files/1/0378/3534/1962/products/1mZ6Js5VcFELGGPnD4H_46gjlXDUlQGXn_1000x1000.jpg?v=1661189552');
            background-size: cover;
            background-position: center;
        }
        .img{
        	width:130%;
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
		.down-content{
		background-color:#fce37c;
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
    <!-- ***** Header Area End ***** -->
    <!-- ***** Header Area End ***** -->

    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 style="color:black">Frontend Web Technologies Courses</h2>
                    
                </div>
            </div>
        </div>
    </section>

    <section class="meetings-page" id="meetings">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="meeting-single-item">

                                <div class="down-content" style="margin-top:-100px; background: linear-gradient(90deg, rgba(212,214,119,1) 0%, rgba(191,237,94,1) 53%, rgba(74,125,120,1) 99%);">
                                  <h4>Available Frontend Web Technologies Course</h4>
                                  
                                  
                                 <div class="image-container" >
                                    <div class="dd1" style="text-align:center; margin-left:150px;">
                                     <form action="FWTBeginner" method="get">
									    <input type="hidden" name="uname" value=<%= name %>>
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
								<img src="https://media.springernature.com/full/springer-static/cover-hires/book/978-1-4302-3997-0" class="img">
									    </button>
									</form>
                                     
                                     <br>
                                   		  <form action="FWTBeginner" method="post">
                                   		   <input type="hidden" name="uname" value=<%= name %>>
            								<button type="submit" style="background: none; border: none; padding-left: 20px; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Beginner</h5>
								            </button>
								        </form>
                                    </div>
                                    <div class="dd1" style="text-align:center;margin-left:50px">
                                       
                                       <form action="FWTInter" method="get">
									    <input type="hidden" name="uname" value=<%= name %>>
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
								<img src="https://m.media-amazon.com/images/I/61OYX2WxSLL._AC_UF1000,1000_QL80_.jpg" class="img">
									    </button>
									</form>
                                       
                                        <br>
                                   		 <form action="FWTInter" method="post">
                                   		  <input type="hidden" name="uname" value=<%= name %>>
            								<button type="submit" style="background: none; border: none; padding-left: 20px; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Intermediate</h5>
								            </button>
								        </form>
                                    </div>
                                    <div class="dd1" style="text-align:center;margin-left:50px">
                                         <form action="FWTAdvance" method="get">
									    <input type="hidden" name="uname" value=<%= name %>>
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
								       <img src="data:image/jpeg;base64,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" class="img">

									    </button>
									</form>
                                       
                                        
                                        <br>
                                   		 <form action="FWTAdvance" method="post">
                                   		  <input type="hidden" name="uname" value=<%= name %>>
            								<button type="submit" style="background: none; border: none; padding-left: 20px; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Advance</h5>
								            </button>
								        </form>
                                    </div>
                                   
                                
                                  </div>
                                </div>
                            </div>
                        </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="main-button-red">
                                <a href="/DigitalAcademy/view/IT2.jsp">Back To Courses</a>
                            </div>
                        </div>
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
    

</body>

</html>
