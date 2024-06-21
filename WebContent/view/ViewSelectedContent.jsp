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
	<link href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lightbox.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <style>
        #top {
            background-image: url('https://marketplace.canva.com/EAFSB04--YM/1/0/1600w/canva-white-and-green-scandinavian-room-view-zoom-virtual-background-xqras_960oY.jpg');
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
.table-responsive {
        overflow-x: auto;
    }

    /* Optional: Adjust table font size for smaller screens */
    @media (max-width: 768px) {
        .table-responsive table {
            font-size: 12px;
        }
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
 .dataTables_wrapper .dataTables_length,
.dataTables_wrapper .dataTables_filter {
    margin-bottom: 20px;
}

/* Adjust the spacing between DataTable elements and table */
.dataTables_wrapper .dataTables_length,
.dataTables_wrapper .dataTables_filter,
.dataTables_wrapper .dataTables_info,
.dataTables_wrapper .dataTables_paginate {
    padding-top: 10px;
    font-weight:bold;
}
  @media (max-width: 768px) {
            .table-responsive table {
                font-size: 12px;
            }
            
            .down-content {
                margin-left: 1px;
            }
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
    String name = (String) session.getAttribute("adminName");
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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
    document.addEventListener('DOMContentLoaded', function() {
        <% String found = (String)session.getAttribute("update3");
           if(found != null && found.equals("true")) { %>
               Swal.fire({
                   icon: 'success',
                   title: 'Successfully Updated',
                   showConfirmButton: true,
                   timer: 4000 // Adjust the timer as needed
               });
        <% } %>
    });
</script>
<section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 style="color:#045c8f">View Contents</h2>
                    
                </div>
            </div>
        </div>
    </section>

<section class="meetings-page" id="meetings">
    <div class="container">
        <div class="row">
            <div class="col-lg-16">
                <div class="row">
                    <div class="col-lg-16">
                        <div class="meeting-single-item">
                            <div class="down-content" style="margin-top:-100px">

                                <h4>All Contents</h4>

								<br>
								
								<!-- <form action="searchcontent">
								<input type="text" name="search" style="height:40px; width:15%; border-radius:10px" placeholder="    Enter Level">
								<input type="text" name="content" style="height:40px; width:17%; border-radius:10px" placeholder="    Enter Content Type">
								<button type="submit" name="btn" style="margin-left: 20px; height: 40px; background: #dc3545; color: white; width: 9%; border-radius: 30px;">
            					<i class="fa fa-search" style="margin-right: 5px;"></i> Search
        						</button>
								</form> -->
								
								
                                <%
                                ArrayList<Content> clist = (ArrayList<Content>) session.getAttribute("contentlist");
                                if (clist != null && !clist.isEmpty()) {
                                %>
                                <div class="table-responsive">
    							<div class="row" style="margin-top: 20px;margin-bottom: 20px;">
        						<div class="col-lg-12" style="margin-bottom: 20px;" >
            						<table id="contentTable"  style="font-size:13px; font-weight:bold; padding-top:10px; border:1px solid ">

                <thead>
                    <tr>
                        <th>Title</th>
                        <th style="width: 150px;">About</th>
                        <th>Content Type</th>
                        <th>Level</th>
                        <th>Video</th>
                        <th>PPT Link</th>
                        <th>Action</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                
                    <% 
                    
                    Collections.reverse(clist);
                    for (Content ss : clist) { %>
                    <tr>
                        <td><%= ss.getName() %></td>
                        <td><%= ss.getAbout() %></td>
                        <td><%= ss.getCtype() %></td>
                        <td><%= ss.getLevel() %></td>
                        <td><%= ss.getVideo() %></td>
                        <td><%= ss.getPpt() %></td>
                        <td>
                        
                        <a href="/DigitalAcademy/view/showupdateform.jsp?id=<%= ss.getCid() %>" class="update-link"
											       style="color:blue">Update</a>
                        
                        </td>
                        <td>
						     <a href="/DigitalAcademy/action/deletecontent.action?id=<%= ss.getCid() %>&btn=<%= ss.getCtype() %>"
						       style="color:blue" class="delete-link" style="color:blue">Delete</a>
						    
						</td>
                        
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
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
                    <a href="/DigitalAcademy/view/ShowContent.jsp">Back To Contents</a>
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
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
$(document).ready(function() {
    $('.update-link').click(function(event) {
        event.preventDefault();
        var name = $(this).data('name');
        Swal.fire({
            title: 'Are you sure you want to update this schedule?',
            text: "This action will redirect you to the update form.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, update it!'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = $(this).attr('href');
            }
        });
    });
});
</script>
<script>
$(document).ready(function() {
    $('.delete-link').click(function(event) {
        event.preventDefault();
        var name = $(this).data('name');
        Swal.fire({
            title: 'Are you sure you want to delete this schedule?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = $(this).attr('href');
            }
        });
    });
});
</script>


<script>
    $(document).ready(function() {
        $('#contentTable').DataTable({
            "paging": true,
            "pageLength": 15,
            "ordering": false,
            "aaSorting": [] 
        });
    });
</script>

</body>

</html>
