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
            background-image: url('https://i.pinimg.com/originals/84/2c/58/842c5857612641b3f45244ef15299a9d.jpg');
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
                    <h2 style="color:#8f0417">Update Content</h2>

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
                            <div class="down-content" style="margin-top:-100px;">
                               <h3 style="text-align:center">Update Content Form</h3>
                               <s:form id="f1" action="updatecontent" theme="simple">
                                <%
                                @SuppressWarnings("unchecked")
                                ArrayList<Content> clist = (ArrayList<Content>) session.getAttribute("contentlist");
                                if (clist != null && !clist.isEmpty()) {
                                    String id = request.getParameter("id");
                                    if (id != null && !id.isEmpty()) { 
                                        for (Content cc : clist) {
                                            if (cc.getCid() == Integer.parseInt(id)) { 
                                		
                                %>
                               <input type="hidden" name="id" value="<%= id %>">
                               <input type="hidden" name="btn" value="<%= cc.getCtype() %>">
                               	<table style="width:90%; margin-top:30px">
                               		<tr>
                               			<td>Title</td>
                               			<td><input type="text" name="name" class="txt" value="<%= cc.getName() %>"></td>
                               			<td><s:fielderror fieldName="name" style="color:red"/></td>
                               		</tr>
                               		<tr>
                               			<td>About</td>
                               			<td><textarea name="about" class="txt" style="height:100px"><%= cc.getAbout() %></textarea></td>
                               			<td><s:fielderror fieldName="about" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               			<td>Content Type</td>
                               			<td><input type="text" name="ctype" class="txt" value="<%= cc.getCtype() %>" readonly style="color:#8a817f"></td>
                               			<td><s:fielderror fieldName="ctype" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               			<td>Level</td>
                               			<td><input type="text" name="level" class="txt" value="<%= cc.getLevel() %>"  style="color:#8a817f"></td>
                               			<td><s:fielderror fieldName="level" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               			<td>Video Link</td>
                               			<td><input type="text" name="video" class="txt" value="<%= cc.getVideo() %>"></td>
                               			<td><s:fielderror fieldName="video" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               			<td>PPT Link</td>
                               			<td><input type="text" name="ppt" class="txt" value="<%= cc.getPpt() %>"></td>
                               			<td><s:fielderror fieldName="ppt" style="color:red"/></td>
                               		</tr>
                               		
                               		<tr>
                               		
                               		
                               		
                               	</table>
                               	
                               	<%
                                            }
                                        }
                                    } else {
                                        // Handle the case where id is null or empty
                                    }
                                }
                               	%>
                               	 <div class="col-lg-12">
                					<div class="main-button-red">
                					
                    				<input type="submit" value="Save" class="btn" style="margin-top:20px; border-radius:50px; width:20%; height:40px; background:#a12c2f; color:white">
                    				
                    				<div class="main-button-red">
                    <a href="/DigitalAcademy/view/ViewSelectedContent.jsp">Cancel </a>
                </div>
                </div>
            </div>
                               
                               </s:form> 
                               
                                
                                
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
