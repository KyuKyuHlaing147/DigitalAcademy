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
        .row{
         width:100%;
         margin-left:-10px;
        }
        .down-content{
        	width:120%;
        	margin-left:-90px;
        }
        .table th.tdwidth {
    width: 20%;
}
    </style>
</head>

<body>
<%
    String name = (String) session.getAttribute("adminName");
%>

<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <a href="#" class="logo">
                        Digital Academy
                    </a>
                    <ul class="nav">
                        <li><a href="/DigitalAcademy/view/Adminhome.jsp">Home</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">Manage Schedule</a>
                            <ul class="sub-menu">
                                <li><a href="AddSchedule.jsp">Add New Schedule</a></li>
                                <li><a href="<s:url action='adminviewschedule'/>">View Schedule</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">Manage Content</a>
                            <ul class="sub-menu">
                                <li><a href="AddContent.jsp">Add New Content</a></li>
                                <li><a href="ShowContent.jsp">Show Contents</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">Manage Quiz</a>
                            <ul class="sub-menu">
                                <li><a href="AddQuiz.jsp">Add New Quiz</a></li>
                                <li><a href="AdminShowQuiz.jsp">View All Quiz</a></li>
                            </ul>
                        </li>
                        <li><a href="#" class="active">Welcome <%=name %></a></li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Menu End ***** -->


<section class="meetings-page" id="meetings">
    <div class="container">
        <div class="row">
            <div class="col-lg-16">
                <div class="row">
                    <div class="col-lg-16">
                        <div class="meeting-single-item">
                            <div class="down-content">

                                <h4>Search Schedule</h4>

								<br>
								
								<form action="searchschedule">
								<input type="text" name="search" style="height:40px; width:15%; border-radius:10px" placeholder="    Enter Name ">
								
								<button type="submit" name="btn" style="margin-left: 20px; height: 40px; background: #dc3545; color: white; width: 9%; border-radius: 30px;">
            					<i class="fa fa-search" style="margin-right: 5px;"></i> Search
        						</button>
								</form>
								
								
                                <%
                                ArrayList<Schedule> clist = (ArrayList<Schedule>) session.getAttribute("searchlist2");
                                if (clist != null && !clist.isEmpty()) {
                                %>
                                <div class="row" style="margin-top: 20px;">
                                    <div class="col-lg-12">
                                        <table class="table table-bordered" style="font-size:14px; font-weight:bold">
                                            <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Start_Date</th>
                                                <th>End_Date</th>
                                                <th>Hour</th>
                                                <th>Time zone</th>
                                                <th>Link</th>
                                                <th>PowerPoint</th>
                                                <th>Teacher</th>
                                                <th>Action</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <% for (Schedule ss : clist) { %>
                                            <tr>
                                                <td><%= ss.getName() %></td>
                                                <td><%= ss.getStart_date() %></td>
                                                <td><%= ss.getEnd_date() %></td>
                                                <td><%= ss.getHour() %></td>
                                                <td><%= ss.getTimezone() %></td>
                                                <td><%= ss.getLink() %></td>
                                                <td><%= ss.getPpt() %></td>
                                                <td><%= ss.getTname() %></td>
                                                <td> <a href="schedulepdateform.jsp?name=<%= ss.getName() %>"  style="color:blue">Update</a></td>
                                                <td>
                                               <a href="/DigitalAcademy/action/deleteschedule.action?name=<%= ss.getName() %>" style="color:blue">Delete</a>


                                                </td>
                                            </tr>
                                            <% } %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <% } else { %>
                                <p>No content available.</p>
                                <% } %>
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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</body>

</html>
