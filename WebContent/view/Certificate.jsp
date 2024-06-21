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
            background-image: url('https://businessevents.australia.com/content/dam/assets/photograph/digital/1/7/5/d/s/2013184.jpg');
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
		.con{
		 		justify-content: center; 
        		align-items: center;
        		display: flex;
        		justify-content: center;
        		align-items: center;
        		height:100vh;
		}
		.container1 {
                border: 20px solid #a62e62;
                width: 100%;
                height: 600px;
                display: table-cell;
                vertical-align: middle;
            	text-align:center;
            	background: linear-gradient(90deg, rgba(245,124,143,1) 0%, rgba(235,218,187,1) 35%, rgba(245,172,214,1) 93%);
            }
            .logo1 {
                color: #b310cc;
               
            }

            .marquee1 {
                color: #a62e62;
                font-size: 48px;
                margin: 20px;
            }
            .assignment1 {
                margin: 20px;
            }
            .person1 {
                border-bottom: 2px solid black;
                font-size: 32px;
                font-style: italic;
                margin: 20px auto;
                width: 400px;
            }
            .reason1 {
                margin: 20px;
            }
            img1 {
  	          	margin-top:20px;
  				border-radius: 50%;
		}

			#img1{
			 border-radius: 50%;
			opacity:0.5;
			
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
     String email=(String) session.getAttribute("usermail");
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
                    <h2 style="color:#6b076e">Your Certificate</h2>
                   
                </div>
            </div>
        </div>
    </section>


<%
    	String score=(String)session.getAttribute("quizScore");
		if(score!=null || !score.isEmpty()){
			
    %>

 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script>
                document.addEventListener('DOMContentLoaded', function() {
                    Swal.fire({
                        icon: 'success',
                        title: 'Your Score is <%= score %>',
                        text: 'Success.',
                        showConfirmButton: true
                    });
                });
            </script>
<%
				
		}
%>

    <section class="meetings-page" id="meetings">
        <div class="container">
            <div class="row">
            
            
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="meeting-single-item">

						 <div class="down-content" style="margin-top:-80px">
						 
						
						 
						 	
                                
          <form id="certificateForm"> 
                       
         <div class="con">       
        <div class="container1">
        	<div class="logo1" style="height:200px; ">
              
            
            
            <% 
       
        ArrayList<UserProfile> userProfileList = (ArrayList<UserProfile>) session.getAttribute("userprofile");
        if(userProfileList != null && !userProfileList.isEmpty()) {
            UserProfile userProfile = userProfileList.get(0); 

    %>

	
	<% 
           
            byte[] pictureData = userProfile.getProfilePicture();
            if (pictureData != null && pictureData.length > 0) {
                String base64Image = Base64.getEncoder().encodeToString(pictureData);
    %>
    
    <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Profile Picture" style="width:120px; height:120px;border-radius: 50%; margin-left:0px; margin-top:50px">
            
          <%
            }
        }
          
          %>  
          
          <%
				Progress pg=(Progress)session.getAttribute("progressquiz");
		%>
            
            </div> 
            <div class="logo1" style="text-align:center">
                Digital Academy
            </div>

            <div class="marquee1">
                Certificate of Completion
            </div>

            <div class="assignment1" style="text-align:center;color:#b310cc">
                This certificate is proudly presented to
            </div>

            <div class="person1" style="text-align:center; margin-top:20px">
               <%=name %>
            </div>

            <div class="reason1" style="text-align:center; color:#b310cc">
                Has Successfully Completed <br/>
                and flying high this <%=pg.getCtype() %> <%=pg.getLevel() %>
            </div>
           
             <div class="footer1">
                 <img src="${pageContext.request.contextPath}/assets2/images/46534837-certified-gold-seal.jpg" alt="certificate" style="width:120px; height:120px; text-align:center; margin-left:700px; margin-top:-100px">
            </div>
        </div>
             </div>                   
                               
                               

                        </form>  
                       <div class="col-lg-12" style="margin-top:20px; display: flex; justify-content: center; align-items: center;">
    <div class="main-button-red" style="margin-right: 10px;">
        <a href="/DigitalAcademy/action/SaveCertificate.action?name=<%= name %>&email=<%= email %>&ctype=<%=pg.getCtype() %>&level=<%=pg.getLevel() %>" style="color:white; font-weight:bold; text-decoration: none; cursor: pointer;">
            Save Certificate
        </a>
    </div>
    <div class="main-button-red">
        <a href="#" id="savePdfLink" style="color:white; font-weight:bold; text-decoration: none; cursor: pointer;">
            Download Certificate
        </a>
    </div>
</div>

                             
                                </div>
                               
                               
                                    </div>
                                    
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
    
     <script>
    document.getElementById('completeButton').addEventListener('click', function() {
        // Set the completion status in local storage
        localStorage.setItem("courseCompleted", "true");
        // Redirect to the current page (certificate.jsp)
        window.location.reload();
    });
</script>


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
    
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.1/jspdf.debug.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.13/jspdf.plugin.autotable.js"></script>

    
    <script>
document.getElementById('savePdfLink').addEventListener('click', function() {
    saveAsPDF();
});

function saveAsPDF() {
    const form = document.getElementById('certificateForm');
    const pdf = new jsPDF();

    const options = {
        background: 'white',
        scale: 3 
    };

    pdf.addHTML(form, options, function() {
        pdf.save('certificate.pdf');
    });
}

</script>

    
    
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
    
   

</body>

</html>
