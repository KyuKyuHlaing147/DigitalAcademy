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
        .heading-page header-text {
            background-image: url('${pageContext.request.contextPath}/assets/images/live-streaming-for-education.jpg');
            background-size: cover;
            background-position: center;
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
#top {
            background-image: url('https://wallpaperboat.com/wp-content/uploads/2020/02/table-04.jpg');
            background-size: cover;
            background-position: center;
        }
        tr,td{
        	padding-top:20px;
        	padding-right:20px;
        	padding-top:20px;
        }
        
        
    </style>
</head>

<%!
    // Define the formatDate method
    public String formatDate(String date) {
        if (date == null || date.isEmpty()) {
            return "";
        }
        return date;
    }
%>

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
	String email=(String)session.getAttribute("adminemail");
	String password=(String)session.getAttribute("adminpassword");
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
                    <h2 style="color:black">Admin Profile</h2>
                    
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
                            <div class="down-content" style="margin-top:-60px">
                           
                            
                               
                               
                            
                             <div class="image-container">
                             
                             
                              <div class="dd1" style="text-align:center; margin-left:100px">
                                       <a href="#">
                                       <img src="https://st3.depositphotos.com/7865540/13292/i/450/depositphotos_132922972-stock-photo-view-of-tablet-with-icons.jpg" class="img" style="height:200px; width:200px; border-radius:50%">
                                   		</a> 
                                   		  
                                    </div>
                                    
                                    <div class="dd1" style=" margin-left:10px">
                                      
                                   		  <form action="updateadmin" method="post">
                                   		  		 
            								
								              <h5>Admin Profile</h5>
								              <table >
								              	<tr>
								              		<td>Name: </td>
								              		<td><%= name %></td>
								              	</tr>
								              	
								              	<tr>
								              		<td>Email: </td>
								              		<td><%= email %></td>
								              	</tr>
								              	<tr>
								              		<td>Password: </td>
								              		<td>
										                <span id="passwordDisplay"><%= "*".repeat(password.length()) %></span>
										                <i id="eyeIcon" class="fa fa-eye" style="margin-left:15px" onclick="togglePasswordVisibility()"></i>
										            </td>
								              	</tr>
								              
								              </table>
								              <br>
								              <a href="/DigitalAcademy/view/AdminUpdate.jsp" style="color:darkblue; ">Update Profile</a>
								           
								        </form>
                                    </div>
                                    
                                    
                                    <script>
    function togglePasswordVisibility() {
        var passwordDisplay = document.getElementById("passwordDisplay");
        var eyeIcon = document.getElementById("eyeIcon");

        if (passwordDisplay.innerHTML.indexOf("*") !== -1) {
            passwordDisplay.innerHTML = '<%= password %>';
            eyeIcon.classList.remove("fa-eye");
            eyeIcon.classList.add("fa-eye-slash");
        } else {
            passwordDisplay.innerHTML = '*'.repeat('<%= password.length() %>');
            eyeIcon.classList.remove("fa-eye-slash");
            eyeIcon.classList.add("fa-eye");
        }
    }
</script>
                                    
                                    
                                    
                                    
                              </div>
                              
                             
                                    
                              
                            
                            
                            
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                            <div class="main-button-red">
                                <a href="/DigitalAcademy/view/Adminhome.jsp">Back To Admin Home</a>
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
