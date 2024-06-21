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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    
    <style>
        .heading-page header-text {
            background-image: url('${pageContext.request.contextPath}/assets/images/live-streaming-for-education.jpg');
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
        }
        .swal2-container {
    		font-family: 'Arial', sans-serif; 
    		background-color:#e9ffab;
		}

		.swal2-popup {
    		border-radius: 10px;
    		background-color:#d1f0de;
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
            background-image: url('https://uhdwallpapers.org/uploads/converted/18/01/19/designer-work-place-5120x2880_756-mm-90.jpg');
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
                    <h2 style="color:#8f5f07">Add New Schedule</h2>
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
                            <div class="down-content" style="background: none; margin-top:-130px">
                               <h3 style="text-align:center">Add New Schedule</h3>
                               <s:form id="f1" action="Addnewschedule" theme="simple" style="border:1px solid; width: 80%; border-radius:10px; ">
                               	<table style="width:90%; margin-top:30px; margin-left:40px">
                               	
                               	<tr>
                               	<td>Courses</td>
                               	<td>
                               	<select name="name" class="txt" style="background-color:white">
                      			<option value="Choose Course" selected disabled>Choose Course</option>
			                      	<option value="CPP Beginner">CPP Beginner </option>
			                      	<option value="CPP Intermediate">CPP Intermediate</option>
			                      	<option value="CPP Advance">CPP Advance</option>
			                      	<option value="FrontendWebTech Beginner">FrontendWebTech Beginner</option>
			                      	<option value="FrontendWebTech Intermediate">FrontendWebTech Intermediate</option>      
			                      	<option value="FrontendWebTech Advance">FrontendWebTech Advance</option>         
			                      	<option value="Database Beginner">Database Beginner </option>
			                      	<option value="Database Intermediate">Database Intermediate</option>
			                      	<option value="Database Advance">Database Advance</option>  
			                      	<option value="Chinese HSK1">Chinese HSK1</option>
			                      	<option value="Chinese HSK2">Chinese HSK2</option>
			                      	<option value="Chinese HSK3">Chinese HSK3</option>
			                      	<option value="Chinese HSK4">Chinese HSK4</option>
			                      	<option value="Chinese HSK5">Chinese HSK5</option>
			                      	<option value="Chinese HSK6">Chinese HSK6</option> 
			                      	<option value="Korea Level1">Korea Level1</option>  
			                      	<option value="Korea Level2">Korea Level2</option> 
			                      	<option value="Korea Level3">Korea Level3</option> 
			                      	<option value="Korea Level4">Korea Level4</option> 
			                      	<option value="Korea Level5">Korea Level5</option> 
			                      	<option value="Japanese Level1">Japanese Level1</option> 
			                      	<option value="Japanese Level2">Japanese Level2</option>
			                      	<option value="Japanese Level3">Japanese Level3</option>
			                      	<option value="Japanese Level4">Japanese Level4</option>
			                      	<option value="Japanese Level5">Japanese Level5</option>   					
			                      </select>
			                      </td>
			                       <td><s:fielderror fieldName="name" style="color:red"/></td>
			                      </tr>
                               			
                               		 
                               		<tr>
    <td>Start_Date</td>
    <td>
        <input type="date" id="start_date_input" name="start_date" class="txt" onchange="formatDate('start_date_input')">
    </td>
    <td><s:fielderror fieldName="start_date" style="color:red"/></td>
</tr>
<tr>
    <td>End_Date</td>
    <td>
        <input type="date" id="end_date_input" name="end_date" class="txt" onchange="formatDate('end_date_input')">
    </td>
    <td><s:fielderror fieldName="end_date" style="color:red"/></td>
</tr>

                               		
                               		<tr>
                               			<td>Hour</td>
                               			<td>
									        <select name="hour" class="txt">
									        	<option value="Choose Hour" selected disabled>Choose Hour</option>
									        	<option value="9:00am-10:00am">9:00am-10:00am</option>
									            <option value="10:00am-11:00am">10:00am-11:00am</option>
									            <option value="11:00am-12:00pm">11:00am-12:00pm</option>
									            <option value="1:00pm-2:00pm">1:00pm-2:00pm</option>
									            <option value="2:00pm-3:00pm">2:00pm-3:00pm</option>
									            <option value="3:00pm-4:00pm">3:00pm-4:00pm</option>
									            
									        </select>
									    </td>
                               			<td><s:fielderror fieldName="hour" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               			<td>Time zone</td>
                               			<td>
									        <select name="timezone" class="txt">
									        	<option value="Choose Timezone" selected disabled>Choose Timezone</option>
									        	<option value="Asia/Yangon">Asia/Yangon</option>
									            <option value="Asia/Tokyo">Asia/Tokyo</option>
									            <option value="Europe/London">Europe/London</option>
									            <option value="America/New_York">America/New_York</option>
									            <option value="Australia/Sydney">Australia/Sydney</option>
									            <option value="Africa/Cairo">Africa/Cairo</option>
									            <option value="Pacific/Honolulu">Pacific/Honolulu</option>
									        </select>
									    </td>
                               			<td><s:fielderror fieldName="timezone" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               			<td>Link</td>
                               			<td><input type="text" name="link" class="txt" placeholder="Enter Video Link "></td>
                               			<td><s:fielderror fieldName="link" style="color:red"/></td>
                               		</tr>
                               		<tr>
                               			<td>PowerPoint</td>
                               			<td><input type="text" name="ppt" class="txt" placeholder="Enter PowerPoint Link " ></td>
                               			<td><s:fielderror fieldName="ppt" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               			<td>Teacher Name</td>
                               			<td><input type="text" name="tname" class="txt" placeholder="Enter Teacher Name "></td>
                               			<td><s:fielderror fieldName="tname" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               		
                               		
                               		
                               	</table>
                               	<script>
    function formatDate(input) {
        var dateValue = input.value;
        var formattedDate = new Date(dateValue);
        var options = { year: 'numeric', month: 'long', day: 'numeric' };
        input.value = formattedDate.toLocaleDateString('en-US', options);
    }
</script>
                               	
                               	
                               	 <div class="col-lg-12">
                					<div class="main-button-red">
                    				<input type="submit" value="Add New" class="btn" style="margin-top:20px; margin-bottom:20px; border-radius:50px; width:20%; height:40px; background:#a12c2f; color:white">
                <input type="reset" value="Cancel" class="btn" style="margin-top:20px; border-radius:50px; width:20%; height:40px; margin-bottom:20px; background:#a12c2f; color:white">
                </div>
            </div>
                               
                               </s:form> 
                               
                                 <div class="col-lg-12">
                <div class="main-button-red">
                    <a href="/DigitalAcademy/view/Adminhome.jsp">Back To Home</a>
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
