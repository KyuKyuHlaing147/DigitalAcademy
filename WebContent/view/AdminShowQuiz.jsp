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
            background-image: url('https://ntbrand-wp.s3.amazonaws.com/mystart/wp-content/uploads/2018/09/12144741/shutterstock_131144792-e1537473578969.jpg');
            background-size: cover;
            background-position: center;
        }
        .row{
         width:100%;
         margin-left:-10px;
        }
        .down-content{
        	width:110%;
        }
        .img{
        	width:90%;
        	height:250px;
        }
        .image-container {
    		display: flex; 
    		margin-top:20px;
    		margin-left:20px;
    		padding:20px;
		}
		.dd1{
			width:35%;
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
#top {
            background-image: url('https://c1.wallpaperflare.com/preview/887/809/258/desk-home-decor-imac.jpg');
            background-size: cover;
            background-position: center;
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
	String name=(String)session.getAttribute("adminName");
	
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
                           <li><a href="/DigitalAcademy/view/Adminhome.jsp" style="color:black;">Home</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)" style="color:black;">Manage Schedule</a>
                            <ul class="sub-menu">
                                <li><a href="/DigitalAcademy/view/AddSchedule.jsp" style="color:black;">Add New Schedule</a></li>
                                <li><a href="/DigitalAcademy/action/adminviewschedule" style="color:black;">View Schedule</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)" style="color:black;">Manage Content</a>
                            <ul class="sub-menu">
                                <li><a href="/DigitalAcademy/view/AddContent.jsp" style="color:black;">Add New Content</a></li>
                                <li><a href="/DigitalAcademy/view/ShowContent.jsp" style="color:black;">Show Contents</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)" style="color:black;">Manage Quiz</a>
                            <ul class="sub-menu">
                                <li><a href="/DigitalAcademy/view/AddQuiz.jsp" style="color:black;">Add New Quiz</a></li>
                                <li><a href="/DigitalAcademy/view/AdminShowQuiz.jsp" style="color:black;">View All Quiz</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                              <a href="#" class="active" style="color:black;">Welcome <%= name %></a>
                              <ul class="sub-menu">
                              		<li><a href="/DigitalAcademy/view/adminprofile.jsp" style="color:black;">Admin Profile</a></li>
                                  <li><a href="<s:url action='LogoutAction2'/>" style="color:black;">Logout</a></li>
                  			
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
<!-- ***** Menu End ***** -->
  <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 style="color:#458f04">All Quiz</h2>
                  
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

                                <div class="down-content" style="margin-top:-100px;background: linear-gradient(90deg, rgba(212,214,119,1) 0%, rgba(235,202,142,1) 53%, rgba(242,106,106,1) 99%);">
                                  <h4>Choose Content For Quiz</h4>
                                  
                                  
                                 <div class="image-container">
                                    <div class="dd1" style="text-align:center;">
                                      
                                      <form action="ShowQuizAction" method="get">
									    <input type="hidden" name="btn" value="Korea">
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
									       <img src="https://a.cdn-hotels.com/gdcs/production74/d462/9fe21145-585c-4e7f-9373-24ed559ec010.jpg" class="img">
									    </button>
									</form>
                                      
                                       
                                   		  <br>
                                   		  <form action="ShowQuizAction" method="post">
                                   		  		  <input type="hidden" name="btn" value="Korea">
            								<button type="submit" value="Korea" name="btn" style="background: none; border: none; padding: 0; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Korea</h5>
								            </button>
								        </form>
                                    </div>
                                    <div class="dd1" style="text-align:center;">
                                         <form action="ShowQuizAction" method="get">
									    <input type="hidden" name="btn" value="Chinese">
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
									       <img src="https://media.istockphoto.com/id/1137568153/photo/cherry-blossoms-in-spring-seoul-in-korea.jpg?s=612x612&w=0&k=20&c=SP8py_0WQrn4mMFdrd0bvk7-MfRWxJl6C3AsHxJq8ck=" class="img">
									    </button>
									</form>
                                        
                                    	<br>
                                   		 <form action="ShowQuizAction" method="post">
                                   		 		  <input type="hidden" name="btn" value="Chinese">
            								<button type="submit" value="Chinese" name="btn" style="background: none; border: none; padding: 0; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Chinese</h5>
								            </button>
								        </form>
                                    </div>
                                    <div class="dd1" style="text-align:center;">
                                         <form action="ShowQuizAction" method="get">
									    <input type="hidden" name="btn" value="Japan">
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
									      <img src="https://wallpapers.com/images/hd/romantic-sakura-tree-pathway-ef9wtrc3634biz0h.jpg" class="img">
									    </button>
									</form>
                                       
                                    	<br>
                                   		 <form action="ShowQuizAction" method="post">
                                   		  <input type="hidden" name="btn" value="Japan">
            								<button type="submit" value="Japanese" name="btn" style="background: none; border: none; padding: 0; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Japanese</h5>
								            </button>
								        </form>
                                    </div>
                                   
                                </div>
                                
                                 <div class="image-container">
                                    <div class="dd1" style="text-align:center;">
                                      <form action="ShowQuizAction" method="get">
									    <input type="hidden" name="btn" value="Frontend Web Technologies">
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
									       <img src="https://www.mindstask.com/en/wp-content/uploads/2020/08/frontendSmallBanner.jpg" class="img">
									    </button>
									</form>
                                      
                                   		  <br>
                                   		  <form action="ShowQuizAction" method="post">
                                   		  		  <input type="hidden" name="btn" value="Frontend Web Technologies">
            								<button type="submit" value="Korea" name="btn" style="background: none; border: none; padding: 0; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Frontend Web Technologies</h5>
								            </button>
								        </form>
                                    </div>
                                    
                                    <div class="dd1" style="text-align:center;">
                                         <form action="ShowQuizAction" method="get">
									    <input type="hidden" name="btn" value="Database">
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
									       <img src="https://img.freepik.com/premium-vector/teamwork-develop-social-media-content-illustration-cartoon-flat-tiny-developer-designer-people-team-working-creative-webpage-news-portal-information-website-web-development-background_213110-392.jpg" class="img">
									    </button>
									</form>
                                      
                                   		  <br>
                                   		  <form action="ShowQuizAction" method="post">
                                   		  		  <input type="hidden" name="btn" value="Database">
            								<button type="submit" value="Korea" name="btn" style="background: none; border: none; padding: 0; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Database</h5>
								            </button>
								        </form>
                                    </div>
                                    
                                    <div class="dd1" style="text-align:center;">
                                        <form action="ShowQuizAction" method="get">
									    <input type="hidden" name="btn" value="Object Oriented Programming">
									    <button type="submit" style="background: none; border: none; padding: 0; margin: 0;">
									      <img src="https://static.vecteezy.com/system/resources/previews/021/554/893/non_2x/illustration-of-web-design-and-development-analytics-seo-social-media-creative-concept-for-web-banner-social-media-banner-business-presentation-marketing-material-vector.jpg" class="img">
									    </button>
									</form>
                                      
                                   		  <br>
                                   		  <form action="ShowQuizAction" method="post">
                                   		  		  <input type="hidden" name="btn" value="Object Oriented Programming">
            								<button type="submit" value="Korea" name="btn" style="background: none; border: none; padding: 0; font: inherit; color: black; text-decoration: none; cursor: pointer;">
								              <h5>Object Oriented Programming</h5>
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
                                <a href="/DigitalAcademy/view/Adminhome.jsp">Back To Home</a>
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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</body>

</html>
