<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.*" %>
<%@ page import="service.*" %>
<%@ page import="java.io.InputStream" %>
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
            background-image: url('https://blog.depositphotos.com/wp-content/uploads/2020/03/Working-room-zoom-background.jpg.webp');
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
		.down-content{
		background-color:#fce37c;
		}
		.completed .progress-bar {
    display: none;
}

.completed .progress-label {
    display: block;
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
.dd1{
			width:18%;
		}
		
		tr,td{
			padding:10px;
		}
		
			.progress-container {
			    position: relative;
			    width: 400px;  
			    margin-top:20px;
			}
			
			.progress-bar {
			    width: 100%;
			    height: 30px; 
			    appearance: none;
			    -webkit-appearance: none;
			    border: none;
			    background-color: white;
			    border-radius: 50px; 
			}
			
			.progress-bar::-webkit-progress-value {
			    background-color: #4caf50; 
			    border-radius: 5px; 
			}
			
			.progress-label {
			    position: absolute;
			    top: 50%;
			    left: 40%;
			    padding:10px;
			    transform: translate(-50%, -50%);
			    font-size: 14px;
			    color: #000; 
			}
			/* Add this CSS to your existing styles */

.progress-bar.completed::-webkit-progress-value {
    background-color: grey; /* Change this to the desired color */
}

			
			.progress-container {
    position: relative;
    padding:10px;
}

.completed-text {
    position: absolute;
    top: 0;
    left: calc(100% + 10px); /* Adjust the spacing between progress bar and text */
}
	.progress-bar.completed::-webkit-progress-value {
    background-color: grey; /* Change this to the desired color */
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
   <!-- ***** Header Area Start ***** -->
   <header class="header-area header-sticky" style="background-color:white;color:black;">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                  <img src="${pageContext.request.contextPath}/assets2/images/D (3).png"  alt="img" style="width:60px;height:60px;border-radius:50%;float:left;margin-top:15px;margin-right:20px" >
                      <!-- ***** Logo Start ***** -->
                      <a href="#" class="logo" style="color:#3CF;">
                         Digital <span style="color:red; font-weight:bold">Academy</span>
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
                    <h2 style="color:#8f1111">Your Profile</h2>
                 
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
                             <div class="down-content">
    <h4>Your Information</h4>
    <br><br>
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
    
    <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Profile Picture" style="width:200px; height:200px;border-radius: 50%;">
    
    
    <i class="fa fa-edit" aria-hidden="true" style="margin-left:30px" ></i>
    <%
    	String uname=userProfile.getUsername();
    	String email=userProfile.getEmail();
    %>
   
    
    
    <a href="/DigitalAcademy/view/profileupdate.jsp?name=<%= uname %>&email=<%= email %>" style="color:blue">Update</a>
    
    <table style="width:90%; margin-top:20px">
    
    <tr>
    	
    	<td><i class="fa fa-user" aria-hidden="true" style="margin-right:20px"></i>User Name</td>
    	<td><%= userProfile.getUsername() %></td>
    </tr>
    
    <tr>
    <td><i class="fa fa-calendar" aria-hidden="true" style="margin-right:20px"></i>Date of Birth</td>
    <td><%= userProfile.getDob() %></td>
    </tr>
    
    <tr>
    <td><i class="fa fa-male" aria-hidden="true" style="margin-right:20px"></i>Gender</td>
    <td> <%= userProfile.getGender() %></td>
    </tr>
    
    <tr>
    <td><i class="fa fa-envelope" aria-hidden="true" style="margin-right:20px"></i>Email</td>
    <td> <%= userProfile.getEmail() %></td>
    </tr>
    
    <tr>
    <td><i class="fa fa-phone-square" aria-hidden="true" style="margin-right:20px"></i>Telephone</td>
    <td> <%= userProfile.getPhone() %></td>
    </tr>
    
    <tr>
    <td><i class="fa fa-globe" aria-hidden="true" style="margin-right:20px"></i>Country</td>
    <td> <%= userProfile.getCountry() %></td>
    </tr>
    
    </table>
    
  
    
    <% 
            }
        } else {
    %>
    <p>No user profile found.</p>
    <% 
        }
    %>
    <br>
     <h5>Your Certificates</h5>
                    <%
                        ArrayList<Certificate> certificates = (ArrayList<Certificate>) session.getAttribute("certificates");
                        if (certificates != null && !certificates.isEmpty()) {
                            for (Certificate certificate : certificates) {
                    %>
                            <div class="certificate-item">
                                
                                <h5>Level: <%= certificate.getCtype() %> <%= certificate.getLevel() %></h5>

                                <br>
                                <!-- Create a link to trigger the download -->
                                <a href="#" onclick="downloadCertificate('<%= request.getContextPath() %>/downloadCertificate?id=<%= certificate.getId() %>')" style="color:darkblue">Download Certificate</a>
                            </div>
                    <%
                            }
                        } else {
                    %>
                        <p>No certificates found.</p>
                    <%
                        }
                    %>
    
    
</div>
                             

                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="main-button-red">
                                <a href="/DigitalAcademy/view/index2.jsp">Back To Home</a>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
     <div class="col-lg-6">
    <div class="row">
        <div class="col-lg-12">
            <div class="meeting-single-item">
                <div class="down-content">
                    <h4>Your Progress</h4>
                    
                    
                <%
ArrayList<Progress> plist = (ArrayList<Progress>) session.getAttribute("progress");
if (plist != null) {
    for (Progress pp : plist) {
        String progressValue = pp.getProgress();
        boolean isCompleted = progressValue.equals("Complete all lessons and quiz");

        // Determine the background color based on completion status
        String progressBarColor = isCompleted ? "#4caf50" : "grey";

        // Remove '%' sign if progress is complete
        String displayProgress = isCompleted ? "Completed all lessons and quiz" : progressValue + "%";
%>
        <p style="margin-top:20px"> Subject: <%= pp.getCtype() %> <%= pp.getLevel() %></p>
        <div class="progress-container" id="progress-container">
            <progress id="progress-bar-<%= pp.getProgress() %>" class="progress-bar <%= isCompleted ? "completed" : "" %>" value="<%= pp.getProgress() %>" max="100" style="background-color: <%= progressBarColor %>;"></progress>
            <span class="progress-label"><%= displayProgress %></span>
        </div>
<%
    }
}
%>




                </div>
            </div>
        </div>
    </div>
</div>



<script>
    async function downloadCertificate(url) {
        try {
            const response = await fetch(url);
            const blob = await response.blob();
            const urlBlob = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = urlBlob;
            a.download = 'certificate.pdf';
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
            window.URL.revokeObjectURL(urlBlob);
        } catch (error) {
            console.error('Error downloading certificate:', error);
        }
    }
</script>


       
                
                
                
                
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
