<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.*" %>
<%@ page import="service.*" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign In form</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets2/images/fav.png" type="image/x-icon">
   <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;500&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets2/images/fav.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets2/css/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <style>
		  body {
            background-image: url('https://getwallpapers.com/wallpaper/full/2/e/3/318571.jpg'); /* Replace with a valid image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        
        .btn{
			width: 100%;
			height: 50px;
			background-color: blue;
			color: white;
		}
		.swal2-container {
    		font-family: 'Arial', sans-serif; 
    		background-color:#e9ffab;
		}

		.swal2-popup {
    		border-radius: 10px;
    		background-color:#d1f0de;
		}
		
	</style>
    
</head>

<body>
  
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
    document.addEventListener('DOMContentLoaded', function() {
        <% String found = (String)session.getAttribute("Login");
           if(found != null && found.equals("true")) { %>
               Swal.fire({
                   icon: 'warning',
                   title: 'Please Login First',
                   showConfirmButton: true,
                   timer: 4000 // Adjust the timer as needed
               });
        <% } %>
    });
</script>


    <form action="JapanaSingin">
    <div class="container-fluid">
        <div class="container">
            <div class="col-xl-10 col-lg-11 mx-auto login-container">
                <div class="row">
                   
                    <div class="col-lg-5 col-md-6 no-padding">
                        <div class="login-box">
                            <h5>Welcome Back!</h5>
							<s:actionerror style="color:red"/>
                            <div class="login-row row no-margin">
                                <label for=""><i class="fas fa-envelope"></i> Email Address</label>
                                <input type="text" class="form-control form-control-sm" name="email" required>
                            </div>

                             <div class="login-row row no-margin">
                                <label for=""><i class="fas fa-unlock-alt"></i> Password</label>
                                <input type="password" class="form-control form-control-sm" name="password" required>
                            </div>

                            
                             <div class="login-row btnroo row no-margin">
								 
								<input type="submit" value="Submit" class="btn" style="background: cadetblue; margin-bottom: 20px;">
                             
                                <a href="SignUp.jsp" class="btn btn-success btn-sm" style="padding-top: 10px;">Create Account</a>

                            </div>
                            <div class="login-row donroo row no-margin">
                               <p>Don't have an Account ? <a href="/DigitalAcademy/view/Japanhome.jsp">Back</a></p>
                            </div>
                        </div>
                    </div>
                    
                     <div class="col-lg-7 col-md-6 img-box">
                        <img src="${pageContext.request.contextPath}/assets2/images/sideimg.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>

</body>

<script src="${pageContext.request.contextPath}/assets2/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets2/js/script.js"></script>

</html> 