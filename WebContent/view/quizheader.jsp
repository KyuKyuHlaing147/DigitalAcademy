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
            background-image: url('https://www.rearviewprints.com/wp-content/uploads/2018/06/laptop2-1-min.jpg');
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
    <!-- ***** Header Area End ***** -->

    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 style="color:#29076e">Quiz</h2>
                 
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

						<%
							Progress pg=(Progress)session.getAttribute("progressquiz");
						%>


                                <div class="down-content" style="text-align:center; margin-top:-60px">
                                   <h4 ><%=pg.getCtype() %> <%=pg.getLevel() %> Test</h4>
                                   <ul style="list-style-type:square">
                                   <li>
                                   <p style="text-align:justify">
                                   1. Assessment of Knowledge: Quizzes provide a structured way to assess your understanding of a particular topic or subject matter. They help you gauge your level of knowledge and identify areas where you might need improvement.
                                   </p>
                                   </li>
                                   <li>
                                   <p style="text-align:justify">
                                   2. Retention of Information: Quizzes can reinforce learning and aid in the retention of information. Retrieving information from memory during a quiz can strengthen neural pathways associated with that information, making it easier to recall in the future.
                                   </p>
                                   </li>
                                   <li>
                                   <p style="text-align:justify">
                                  3. Taking quizzes can be a valuable tool for learning and academic success, offering benefits such as assessment, feedback, motivation, and enhanced retention of information.
                                   </p>
                                   </li>
                                   </ul>
                                   
                                <%
								    String actionUrl = "";
								    String ctype = pg.getCtype(); 
								    String level = pg.getLevel(); 
								    
								    if (ctype.equals("korea") && level.equals("level1")) {
								        actionUrl = "takequiz?type=korea&level=1"; 
								    } else if (ctype.equals("korea") && level.equals("level2")) {
								        actionUrl = "takequiz?type=korea&level=2"; 
								    }
								%>

                
                                
                                
                                <div class="col-lg-12">
                          			<form action="<s:url action='takequiz'/>" method="post">
									    <input type="hidden" name="type" value="<%= pg.getCtype() %>">
									    <input type="hidden" name="level" value="<%= pg.getLevel() %>">
									    <button type="submit" style="background: #a12c2f; color:white; border-radius:50px; width:20%; height:40px; padding: 0; font: inherit; text-decoration: none; cursor: pointer;  ">
									        <h5 style="color:white; font-size:14px; margin-top:10px">Start Quiz</h5>
									    </button>
</form>

                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            
                        </div>

                          <div class="col-lg-12">
    <div class="main-button-red">
        <%
            ArrayList<Content> onelist3 = (ArrayList<Content>) session.getAttribute("onelist");
            if (onelist3 != null && onelist3.size() > 0) {
                Content cc = onelist3.get(0); // Assuming you want to access the first element
                if (cc.getCtype().equals("Japan")) {
        %>
            <a href="/DigitalAcademy/view/Japanhome2.jsp">Previous</a>
        <%
                } else if (cc.getCtype().equals("Korea")) {
        %>
            <a href="/DigitalAcademy/view/KoreaHome2.jsp">Previous</a>
        <%
                } else if (cc.getCtype().equals("Chinese")) {
        %>
            <a href="/DigitalAcademy/view/chinesehome2.jsp">Previous</a>
        <%
                } else if (cc.getCtype().equals("FWT")) {
        %>
            <a href="/DigitalAcademy/view/Fwthome2.jsp">Previous</a>    
            
        <%
                } else if (cc.getCtype().equals("Database")) {
        %>
            <a href="/DigitalAcademy/view/Databasehome2.jsp">Previous</a>    
            
        <%
                } else if (cc.getCtype().equals("C++")) {
        %>
            <a href="/DigitalAcademy/view/C++home2.jsp">Previous</a>    
        <%
                } else {
        %>
            <!-- Default link in case the condition doesn't match -->
            <a href="/DigitalAcademy/view/subject2.jsp">Previous</a>
        <%
                }
            }
        %>
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
        
      //for download function
        $(document).ready(function() {
           
            function downloadPpt(url) {
                
                var fullUrl = url; 
                var anchor = document.createElement('a');
                anchor.href = fullUrl;
                anchor.download = 'presentation.pptx';
                anchor.click();
            }

            $('.download-link').click(function(e) {
                e.preventDefault();
                var pptUrl = $(this).data('ppt-url');
                downloadPpt(pptUrl);
            });
        });
        
    </script>
    
     <!-- Ensure jQuery is loaded before your custom JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>

</body>

</html>
