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
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lightbox.css">
    <style>
         #top {
            background-image: url('https://ar.happyvalentinesday2020.online/pics/designpickle-resources.s3.us-east-2.amazonaws.com/2020/Zoom+Backgrounds/April/20_DesignPickle_Zoom_Background-2.jpg');
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

.section_title {
  margin-bottom: 40px;
}

.section_title h2 {
  color: #333333;
  font-size: 25px;
  font-weight: 700;
  letter-spacing: 1.8px;
  text-transform: uppercase;
}

.brand_border .fa.fa-minus {
    color: #fff;
    font-size: 8px;
    height: 2px;
        background: #F8C01B none repeat scroll 0 0;
    width: 100px;
}
.brand_border .fas.fa-handshake {
    font-size: 14px;
        color:#000000;
}


.section_title p {
  color: #333333;
  font-size: 14px;
  line-height: 25px;
  padding: 14px 0;
}


.tables-page-section .table {
  text-align: center;
  margin-bottom: 40px;
}
.tables-page-section .table th {
  border-bottom: 1px solid #ffffff;
  border-right: 1px solid #ffffff;
  font-family: 'Montserrat', sans-serif;
  font-size: 15px;
  font-weight: 700;
  padding: 10px 20px;
  text-align: center;
}
.tables-page-section .table td {
  border-bottom: 1px solid #ffffff;
  border-right: 1px solid #ffffff;
  background: #f1f1f1;
  font-family: 'Lato', sans-serif;
  font-size: 13px;
  color: #666666;
  padding: 10px 20px;
}
.tables-page-section .table thead th {
  padding: 15px 20px;
  text-align: center;
  background: #ffba00 !important;
}
.tables-page-section .table tr th {
  background: #f1f1f1;
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

    <section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 style="color:#8f114e">Live Teaching</h2>
                  
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
                                  <h4>C++ Class Live Schedules</h4>
                                  
                                  
<%
ArrayList<Schedule> slist = (ArrayList<Schedule>) session.getAttribute("C++list");
if (slist != null && !slist.isEmpty()) {
%>
<div class="row">
    <div class="col-sm-12">
      <div class="table-responsive">
          <table class="table">
        
         <thead>
                <tr>
                    <th scope="col">Course</th>
                    <th scope="col">Hours</th>
                    <th scope="col">Start_date</th>
                    <th scope="col">End_date</th>
                    <th scope="col">Time zone</th>
                    <th scope="col">Links</th>
                    <th scope="col">PowerPoint</th>
                    <th scope="col">Teacher</th>
                </tr>
            </thead>
            <tbody>
                <% for (Schedule ss : slist) { %>
                <tr>
                    <td scope="row"><%= ss.getName() %></td>
                    <td><%= ss.getHour() %></td>
                    <td><%= ss.getStart_date() %></td>
                    <td><%= ss.getEnd_date() %></td>
                    <td><%= ss.getTimezone() %></td>
                    <td>
   <a href="#" onclick="handleLinkClick('<%= ss.getLink() %>', '<%= ss.getHour() %>', '<%= ss.getStart_date() %>', '<%= ss.getEnd_date() %>', '<%= ss.getName() %>')" style="color: darkblue">
    <%= ss.getLink() %>
</a>

</td>
                    
                    <%
    String pptFilename = ss.getPpt();
    int lastIndex = pptFilename.lastIndexOf("/");
    if (lastIndex != -1) {
        pptFilename = pptFilename.substring(lastIndex + 1);
    }
%>
<td><a href="#" onclick="downloadPpt('/powerpoint/<%= ss.getPpt() %>', '<%= pptFilename %>')" style="color: darkblue"><%= pptFilename %></a></td>

                    <td><%= ss.getTname() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div></div>
<%
} else {
%>
<div class="row" style="margin-top: 20px;">
    <div class="col-lg-12">
        <p>No schedule available.</p>
    </div>
</div>
<%
}
%>
<script>
    function downloadPpt(link, filename) {
        fetch(link)
            .then(response => response.blob())
            .then(blob => {
                const url = window.URL.createObjectURL(blob);
                const a = document.createElement('a');
                a.style.display = 'none';
                a.href = url;
                // Set the filename for download
                a.setAttribute('download', filename);
                document.body.appendChild(a);
                a.click();
                window.URL.revokeObjectURL(url);
            })
            .catch(error => console.error('Error downloading file:', error));
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>
    function handleLinkClick(link, hours, startDate, endDate, name) {
        var currentDate = new Date();
        var currentHours = currentDate.getHours();
        var currentMinutes = currentDate.getMinutes();

        // Parse hours to get start and end times
        var hoursArray = hours.split("-");
        var startTime = parseTime(hoursArray[0].trim());
        var endTime = parseTime(hoursArray[1].trim());

        // Check if current time is within the specified hours
        if (currentDate >= new Date(startDate) && currentDate <= new Date(endDate) &&
            isTimeBetween(currentHours, currentMinutes, startTime.hours, startTime.minutes, endTime.hours, endTime.minutes)) {
            window.open(link, '_blank');
        } else {
        	 Swal.fire({
                 title: "This class is not currently in session.",
                 text: "Please Study Lesson Videos",
                 icon: "warning",
                 showCancelButton: true, // Add this line to show the Cancel button
                 confirmButtonColor: '#3085d6',
                 cancelButtonColor: '#d33',
                 confirmButtonText:'Ok,Start Study'
            }).then((result) => {
                if (result.isConfirmed && name.includes("CPP")) {
                    window.location.href = "/DigitalAcademy/view/C++home2.jsp";
                }
            });
        }
    }

    function parseTime(timeString) {
        var time = timeString.match(/(\d+):(\d+)(am|pm)/i);
        var hours = parseInt(time[1], 10);
        var minutes = parseInt(time[2], 10);

        if (time[3].toLowerCase() === 'pm' && hours !== 12) {
            hours += 12;
        } else if (time[3].toLowerCase() === 'am' && hours === 12) {
            hours = 0;
        }

        return { hours: hours, minutes: minutes };
    }

    function isTimeBetween(currentHours, currentMinutes, startHours, startMinutes, endHours, endMinutes) {
        if (currentHours > startHours && currentHours < endHours) {
            return true;
        } else if (currentHours === startHours && currentMinutes >= startMinutes) {
            return true;
        } else if (currentHours === endHours && currentMinutes <= endMinutes) {
            return true;
        }
        return false;
    }
</script>





    </div>
                                </div>
                            </div>
                        </div>
                             
      
            
              <div class="row" style="margin-top:20px">
                        <div class="col-lg-12">
                            <div class="meeting-single-item">

                                <div class="down-content">
                                  <h4>Frontend Web Technologies Class Live Schedules</h4>
                                  
                                  
<%
ArrayList<Schedule> clist = (ArrayList<Schedule>) session.getAttribute("Fwtlist");
if (clist != null && !clist.isEmpty()) {
%>
<div class="row">
    <div class="col-sm-12">
      <div class="table-responsive">
          <table class="table">
            <thead>
                <tr>
                    <th scope="col">Course</th>
                    <th scope="col">Hours</th>
                    <th scope="col">Start_date</th>
                    <th scope="col">End_date</th>
                    <th scope="col">TimeZone</th>
                    <th scope="col">Links</th>
                    <th scope="col">PowerPoint</th>
                    <th scope="col">Teacher</th>
                </tr>
            </thead>
            <tbody>
                <% for (Schedule ss : clist) { %>
                <tr>
                    <td scope="row"><%= ss.getName() %></td>
                    <td><%= ss.getHour() %></td>
                    <td><%= ss.getStart_date() %></td>
                    <td><%= ss.getEnd_date() %></td>
                    <td><%= ss.getTimezone() %></td>
                    <td><a href="#" onclick="handleLinkClick2('<%= ss.getLink() %>', '<%= ss.getHour() %>', '<%= ss.getStart_date() %>', '<%= ss.getEnd_date() %>', '<%= ss.getName() %>')" style="color: darkblue">
    <%= ss.getLink() %>
</a></td>
                     <%
    String pptFilename = ss.getPpt();
    int lastIndex = pptFilename.lastIndexOf("/");
    if (lastIndex != -1) {
        pptFilename = pptFilename.substring(lastIndex + 1);
    }
%>
<td><a href="#" onclick="downloadPpt('/powerpoint/<%= ss.getPpt() %>', '<%= pptFilename %>')" style="color: darkblue"><%= pptFilename %></a></td>

                    <td><%= ss.getTname() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>
</div>
<%
} else {
%>
<div class="row" style="margin-top: 20px;">
    <div class="col-lg-12">
        <p>No schedule available.</p>
    </div>
</div>
<%
}
%>

                                    
                                    </div>
                                </div>
                            </div>
                        </div>
              <script>
    function handleLinkClick2(link, hours, startDate, endDate, name) {
        var currentDate = new Date();
        var currentHours = currentDate.getHours();
        var currentMinutes = currentDate.getMinutes();

        // Parse hours to get start and end times
        var hoursArray = hours.split("-");
        var startTime = parseTime(hoursArray[0].trim());
        var endTime = parseTime(hoursArray[1].trim());

        // Check if current time is within the specified hours
        if (currentDate >= new Date(startDate) && currentDate <= new Date(endDate) &&
            isTimeBetween(currentHours, currentMinutes, startTime.hours, startTime.minutes, endTime.hours, endTime.minutes)) {
            window.open(link, '_blank');
        } else {
        	 Swal.fire({
                 title: "This class is not currently in session.",
                 text: "Please Study Lesson Videos",
                 icon: "warning",
                 showCancelButton: true, // Add this line to show the Cancel button
                 confirmButtonColor: '#3085d6',
                 cancelButtonColor: '#d33',
                 confirmButtonText:'Ok,Start Study'
            }).then((result) => {
                if (result.isConfirmed && name.includes("FrontendWebTech")) {
                    window.location.href = "/DigitalAcademy/view/Fwthome2.jsp ";
                }
            });
        }
    }

    function parseTime(timeString) {
        var time = timeString.match(/(\d+):(\d+)(am|pm)/i);
        var hours = parseInt(time[1], 10);
        var minutes = parseInt(time[2], 10);

        if (time[3].toLowerCase() === 'pm' && hours !== 12) {
            hours += 12;
        } else if (time[3].toLowerCase() === 'am' && hours === 12) {
            hours = 0;
        }

        return { hours: hours, minutes: minutes };
    }

    function isTimeBetween(currentHours, currentMinutes, startHours, startMinutes, endHours, endMinutes) {
        if (currentHours > startHours && currentHours < endHours) {
            return true;
        } else if (currentHours === startHours && currentMinutes >= startMinutes) {
            return true;
        } else if (currentHours === endHours && currentMinutes <= endMinutes) {
            return true;
        }
        return false;
    }
</script>
   
                        
                   
                           <div class="row" style="margin-top:20px">
                        <div class="col-lg-12">
                            <div class="meeting-single-item">

                                <div class="down-content">
                                  <h4>Database Class Live Schedules</h4>
                                  
                                  
<%
ArrayList<Schedule> jlist = (ArrayList<Schedule>) session.getAttribute("Dblist");
if (jlist != null && !jlist.isEmpty()) {
%>
<div class="row">
    <div class="col-sm-12">
      <div class="table-responsive">
          <table class="table">
            <thead>
                <tr>
                    <th scope="col">Course</th>
                    <th scope="col">Hours</th>
                    <th scope="col">Start_date</th>
                    <th scope="col">End_date</th>
                    <th scope="col">TimeZone</th>
                    <th scope="col">Links</th>
                    <th scope="col">PowerPoint</th>
                    <th scope="col">Teacher</th>
                </tr>
            </thead>
            <tbody>
                <% for (Schedule ss : jlist) { %>
                <tr>
                   <td scope="row"><%= ss.getName() %></td>
                    <td><%= ss.getHour() %></td>
                    <td><%= ss.getStart_date() %></td>
                    <td><%= ss.getEnd_date() %></td>
                    <td><%= ss.getTimezone() %></td>
                    <td><a href="#" onclick="handleLinkClick3('<%= ss.getLink() %>', '<%= ss.getHour() %>', '<%= ss.getStart_date() %>', '<%= ss.getEnd_date() %>', '<%= ss.getName() %>')" style="color: darkblue">
    <%= ss.getLink() %>
</a></td>
                     <%
    String pptFilename = ss.getPpt();
    int lastIndex = pptFilename.lastIndexOf("/");
    if (lastIndex != -1) {
        pptFilename = pptFilename.substring(lastIndex + 1);
    }
%>
<td><a href="#" onclick="downloadPpt('/powerpoint/<%= ss.getPpt() %>', '<%= pptFilename %>')" style="color: darkblue"><%= pptFilename %></a></td>

                    <td><%= ss.getTname() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>
</div>
<%
} else {
%>
<div class="row" style="margin-top: 20px;">
    <div class="col-lg-12">
        <p>No schedule available.</p>
    </div>
</div>
<%
}
%>

                                    
                                    </div>
                                </div>
                            </div>
                        </div>
     <script>
    function handleLinkClick3(link, hours, startDate, endDate, name) {
        var currentDate = new Date();
        var currentHours = currentDate.getHours();
        var currentMinutes = currentDate.getMinutes();

        // Parse hours to get start and end times
        var hoursArray = hours.split("-");
        var startTime = parseTime(hoursArray[0].trim());
        var endTime = parseTime(hoursArray[1].trim());

        // Check if current time is within the specified hours
        if (currentDate >= new Date(startDate) && currentDate <= new Date(endDate) &&
        isTimeBetween(currentHours, currentMinutes, startTime.hours, startTime.minutes, endTime.hours, endTime.minutes)) {
        window.open(link, '_blank');
    } else {
        Swal.fire({
            title: "This class is not currently in session.",
            text: "Please Study Lesson Videos",
            icon: "warning",
            showCancelButton: true, // Add this line to show the Cancel button
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText:'Ok,Start Study'
        }).then((result) => {
            if (result.isConfirmed && name.includes("Database")) {
                window.location.href = "/DigitalAcademy/view/Databasehome2.jsp";
            }
        });
    }
    }

    function parseTime(timeString) {
        var time = timeString.match(/(\d+):(\d+)(am|pm)/i);
        var hours = parseInt(time[1], 10);
        var minutes = parseInt(time[2], 10);

        if (time[3].toLowerCase() === 'pm' && hours !== 12) {
            hours += 12;
        } else if (time[3].toLowerCase() === 'am' && hours === 12) {
            hours = 0;
        }

        return { hours: hours, minutes: minutes };
    }

    function isTimeBetween(currentHours, currentMinutes, startHours, startMinutes, endHours, endMinutes) {
        if (currentHours > startHours && currentHours < endHours) {
            return true;
        } else if (currentHours === startHours && currentMinutes >= startMinutes) {
            return true;
        } else if (currentHours === endHours && currentMinutes <= endMinutes) {
            return true;
        }
        return false;
    }
</script>                
                        
                        
           
                        <div class="col-lg-12">
                            <div class="main-button-red">
                               <a href="/DigitalAcademy/view/index.jsp">Back To Home</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    
        <div class="footer" >
            <p style="color:black">Copyright © 2024 Digital Academy. All Rights Reserved.
                <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates" style="color:red">Digital Academy Team</a></p>
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
