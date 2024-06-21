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
       #top{
            background-image: url('https://i.pinimg.com/originals/84/2c/58/842c5857612641b3f45244ef15299a9d.jpg');
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
        .error{
        	color:red;
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
                          <li><a href="/DigitalAcademy/view/index.jsp" style="color:black; font-weight:bold">Home</a></li>
                     
                          <li class="has-sub">
                              <a href="javascript:void(0)" style="color:black; font-weight:bold">Courses</a>
                              <ul class="sub-menu">
                                  <li><a href="/DigitalAcademy/view/subject.jsp" style="color:black; font-weight:bold">Languages</a></li>
                                  <li><a href="/DigitalAcademy/view/IT.jsp" style="color:black; font-weight:bold">Programming</a></li>
                              </ul>
                          </li>
                         
                  		 <li><a href="/DigitalAcademy/view/headersignin.jsp" style="color:black; font-weight:bold">Sign In</a></li>
                  		 <li><a href="/DigitalAcademy/view/SignUp.jsp" style="color:black; font-weight:bold">Sign Up</a></li>
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
 
<!-- ***** Menu End ***** -->
<section class="heading-page header-text" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 style="color:black">Sign Up</h2>
                    
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
                        <div class="meeting-single-item" style="justify-content: center; 
        		align-items: center;
        		display: flex;">
                           <div class="down-content" style="border-radius:10px; margin-top:-100px; width:90%; background-image: url('https://i.pinimg.com/564x/1b/d2/50/1bd250a2a4cdf9e3747b54299e7befa4.jpg'); background-size: cover;">
                               <h3 style="text-align:center; margin-bottom:20px">Sign Up Form</h3>
                                <table style="margin-left: 30px; margin-top: 40px; width: 80%; margin: 10px auto">
        
        
        <s:form theme="simple" action="SignUp" enctype="multipart/form-data">
           <tr>
           <td>UserName:
           <span style="color:red; margin-left:15px">*</span>
           </td>
           <td><s:textfield name="username" class="txt" placeholder="Enter your name"/>
           
           </td>
           <td><s:fielderror fieldName="username" cssClass="error"/></td>
           </tr>
           
           <tr>
           <td>Password:
           <span style="color:red; margin-left:15px">*</span>
           </td>
           <td><s:password name="password" class="txt" autocomplete="off" placeholder="Enter your password"/></td>
           <td><s:fielderror fieldName="password" cssClass="error"/></td>
           </tr>
           
           
           <tr>
           <td>Date of Birth<span style="color:red; margin-left:15px">*</span></td>
           <td><input type="date" id="birthday" name="dob" class="txt" ></td>
           <td><s:fielderror fieldName="dob" cssClass="error"/></td>
           </tr>
           
     
           <tr>
           <td>Gender:</td>
           <td style="padding-left:7px"><s:radio name="gender" list="{'Male','Female'}" /></td>
           <td><s:fielderror fieldName="gender" cssClass="error"/></td>
           </tr>
           
           <tr>
           <td>Email:
           <span style="color:red; margin-left:15px">*</span>
           </td>
           <td><s:textfield name="email" class="txt" placeholder="Enter your email"/></td>
           <td><s:fielderror fieldName="email" cssClass="error"/></td>
           </tr>
           
           <tr>
           <td>Telephone:</td>
           <td><s:textfield name="telephone" class="txt" placeholder="Enter your phone(09*********)"/></td>
           <td><s:fielderror fieldName="telephone" cssClass="error"/></td>
           </tr>
           
           <tr>
    <td>Select a country:</td>
    <td>
        <s:select name="country" list="{'Choose country','Myanmar','Korea','China','Japan'}" value="{'Choose country'}" class="txt" id="countrySelect"/>
    </td>
    <td><s:fielderror fieldName="country" cssClass="error"/></td>
</tr>

<tr>
    <td>Zip:</td>
    <td><s:textfield name="zip" class="txt" id="zipField" placeholder="Enter your zip code"/></td>
    <td><s:fielderror fieldName="zip" cssClass="error"/></td>
</tr>

	  <tr>
                <td>Profile Picture:</td>
                <td><input type="file" name="pictureFile" class="txt" style="font-size:14px"/></td>
            </tr>
         
			<tr>
                <td colspan="2">
               <div style="justify-content: center; 
        		align-items: center;
        		display: flex;">
               
               
               
                    <s:submit value="Submit" id="btn1" style="margin-top:20px; border-radius:50px; width:20%; height:40px; background:#a12c2f; color:white"/>
              		<input type="reset" value="Cancel" style="margin-top:20px; border-radius:50px; width:20%; height:40px; background:#a12c2f; color:white"/>
              		<br>
              		
              		
              
              </div>
              </td>
            </tr>
          </s:form>
           
			
        </table>
                               
             <script>
    document.getElementById('countrySelect').addEventListener('change', function() {
        var country = this.value;
        var zipField = document.getElementById('zipField');

        // Set zip code based on the selected country
        switch(country) {
            case 'Myanmar':
                zipField.value = '11181 ';
                break;
            case 'Korea':
                zipField.value = '03187';
                break;
            case 'China':
                zipField.value = '102629';
                break;
            case 'Japan':
                zipField.value = '364000';
                break;
            default:
                zipField.value = '00000'; 
                break;
        }
    });
</script>  
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

           <div class="col-lg-12">
                            <div class="main-button-red">
                                <a href="/DigitalAcademy/view/index.jsp">Back To Home</a>
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
