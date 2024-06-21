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
            background-image: url('https://images.unsplash.com/photo-1589362281138-e3f7ebe47f1a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bGFwdG9wJTIwZGVza3xlbnwwfHwwfHx8MA%3D%3D');
            background-size: cover;
            background-position: center;
        }
        .txt{
        	width:80%;
        	height:50px;
        	border-radius:10px;
        }
        #f1{
        	width:60%;
        	height:auto;
        	margin:20px auto;
        }
        td{
        	padding:10px;
        	height:30px;
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
.error{
	color:red;
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
                    <h2 style="color:black">Admin Profile Update</h2>
                    
                </div>
            </div>
        </div>
    </section>

    <section class="meetings-page" id="meetings">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="meeting-single-item" style="justify-content: center; align-items: center; display: flex;">
                        <div class="down-content" style="border-radius:10px; margin-top:-100px; width:90%; background-image: url('https://i.pinimg.com/564x/1b/d2/50/1bd250a2a4cdf9e3747b54299e7befa4.jpg'); background-size: cover;">
                            <h3 style="text-align:center; margin-bottom:20px">Profile update Form</h3>
                            <s:form theme="simple" action="AdminUpdateProfile" enctype="multipart/form-data">
                                <table style="margin-left: 30px; margin-top: 40px; width: 80%; margin: 10px auto">

                                   
                                   <tr>
            <td>Admin Name:</td>
            <td><input type="text" name="username" value="<%= name %>" class="txt"></td>
            <td><s:fielderror fieldName="username" cssClass="error"></s:fielderror></td>
        </tr>
        <tr>
            <td>Current Password:</td>
            <td><input type="password" name="opassword" class="txt"></td>
            <td><s:fielderror fieldName="opassword" cssClass="error"></s:fielderror></td>
        </tr>
        <tr>
            <td>New Password:</td>
            <td><input type="password" name="password" class="txt"></td>
            <td><s:fielderror fieldName="password" cssClass="error"></s:fielderror></td>
        </tr>
       
        <tr>
            <td>Email:</td>
            <td><input type="email" name="email" value="<%= email %>" class="txt"></td>
            <td><s:fielderror fieldName="email" cssClass="error"></s:fielderror></td>
        </tr>
                           

                                    <tr>
                                        <td colspan="2">
                                            <div style="justify-content: center; align-items: center; display: flex;">
                                                <input type="hidden" name="uname" value="<%= name %>">
                                                
                                                <input type="submit" value="Update" id="btn1" style="margin-top:20px; border-radius:50px; width:20%; height:40px; background:#a12c2f; color:white"/>
                                                <input type="button" value="Back" id="btn1" onclick="redirectToProfilePage()" style="margin-top:20px; border-radius:50px; width:20%; height:40px; background:#a12c2f; color:white"/>
                                                
                                                
                                               <script>
    // Function to handle button click event
    function redirectToProfilePage() {
        window.location.href = "/DigitalAcademy/view/adminprofile.jsp";
    }

    // Add event listener to the button
    document.getElementById("btn1").addEventListener("click", redirectToProfilePage);
</script>

                                                
                                                
                                                <br>
                                            </div>
                                        </td>
                                    </tr>
                               
                                    
                                </table>
                            </s:form>
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
