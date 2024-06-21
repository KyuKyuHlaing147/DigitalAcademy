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
        .heading-page header-text {
            background-image: url('${pageContext.request.contextPath}/assets/images/live-streaming-for-education.jpg');
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
   
   <!-- ***** Header Area Start ***** -->
   <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="#" class="logo">
                         Digital Academy
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="/DigitalAcademy/view/index.jsp">Home</a></li>
                     
                          <li class="has-sub">
                              <a href="javascript:void(0)">Subjects</a>
                              <ul class="sub-menu">
                                  <li><a href="/DigitalAcademy/view/subject.jsp">Languages</a></li>
                                  <li><a href="/DigitalAcademy/view/IT.jsp">IT and CS</a></li>
                              </ul>
                          </li>
                          <li><a href="/DigitalAcademy/view/liveteachingheader.jsp">Live Teaching</a></li>
                  		 <li><a href="/DigitalAcademy/view/headersignin.jsp">Sign In</a></li>
                  		 <li><a href="/DigitalAcademy/view/signup.jsp">Sign Up</a></li>
                      </ul>        
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
    <!-- ***** Header Area End ***** -->


   
         <section class="meetings-page" id="meetings">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="meeting-single-item">

                                <div class="down-content">
                                  <h4>Live Teaching Details</h4>
                                  
                                  
                              <div class="row" style="margin-top: 20px;">
                                        <div class="col-lg-3">
                                            <div class="hours">
                                                <h5>Teachers</h5>
                                                <p>Daw Chue Theingi Kyaw</p>
                                                <p>Daw Phyu Phyu Thant</p>
                                                <p>Daw Nwe Nwe Aye</p>
                                                <p>Daw Kyu Kyu Hlaing</p>
                                            </div>
                                        </div>
										<div class="col-lg-3">
                                            <div class="hours">
                                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTVKRCMyicNvMj_6iCDaUHHot0JHTu9GXi12k-N6b8nC4gnPeo2OeGl23JnIigCDzP1UQ&usqp=CAU">
                                            </div>
                                        </div>
										
                                     <div class="col-lg-3">
                                            <div class="hours">
                                                <img src="https://news.itmo.ru/images/news/big/936704.jpg">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="hours">
                                                <img src="https://news.itmo.ru/images/news/big/936702.jpg">
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="main-button-red">
                            <form action="showschedule">
                                <input type="submit" value="Show Schedules" style="margin-top:20px; border-radius:50px; width:20%; height:40px; background:#a12c2f; color:white">
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <p>Copyright © 2024 Digital Academy. All Rights Reserved.
                <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">Digital Academy Team</a></p>
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
