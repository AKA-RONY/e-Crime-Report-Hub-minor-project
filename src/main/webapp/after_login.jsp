<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    
<!DOCTYPE html>
<html lang="en">

<head>
    <title>E-Crime Report Hub / after login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Custom CSS for the body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
              background-image: url('images/15.jpg'); 
            /* Replace 'your-image-url.jpg' with your image URL */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            background-color: rgba(9, 118, 165, 0.7);
            /* Background color with transparency */
        }

        /* Custom CSS for the "Emergency" container */
        .emergency {
            position: absolute;
            bottom: 1px;
            right: 10px;
            width: 400px;
            margin-bottom: 50px;
            border: 1px solid #070000;
            padding: 10px;
            background-color: rgba(249, 249, 249, 0.7);
            /* Adjusted background color with transparency */
            border-radius: 10px;
        }

        @media (max-width: 767px) {

            /* Media query for screens smaller than 768px (phones) */
            .emergency {
                position: static;
                /* Remove absolute positioning */
                margin: 20px auto;
                /* Center the container horizontally */
                width: 90%;
                /* Adjust the width for smaller screens */
            }
        }

        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: rgba(13, 2, 2, 0.7);
            color: white;
            text-align: center;
        }
    </style>
    <h3 style="text-align: center;font-weight:bold; margin-bottom: 20px; color: white;">e-Crime Report Hub: Online FIR Filing and Case
        Mangement System
    </h3>
</head>

<body>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="cat_theft.jsp">Theft</a></li>
                        <li><a href="cat_assault.jsp">Assault</a></li>
                        <li><a href="cat_fraud.jsp">Fraud</a></li>
                        <li><a href="cat_DRC.jsp">Drug-Related Crimes</a></li>
                        <li><a href="cat_vandalism.jsp">Vandalism</a></li>
                    </ul>
                </li>
                <li class="active"><a href="after_login.jsp">Home</a></li>
                <li><a href="about_us.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${session_username }</a></li>
                <li><a href="FAQ.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
              <!--  <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>  --> 
                <!--  <li><a href="index.jsp" onclick="logout();"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li> -->
            
              <!-- <li><a href="LogoutServlet" ><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>-->
               <li><a href="LogoutServlet" id="logoutButton"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>  
                 
                
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
             
              <div class="Qfir">
    <center>
        <a href="mycomplaints.jsp">
            <button style="width: 100%;color:black;font-weight:bold; height: 100px; margin-top: 80px; background-color: rgba(255, 255, 255, 0.8); border-radius: 10px;">
                MY COMPLAINTS
            </button>
        </a>
    </center>
</div>
                <div class="Qfir">
    <center>
        <a href="filefir.jsp">
            <button style="width: 100%;color:black;font-weight:bold; height: 100px; margin-top: 20px; background-color: rgba(255, 255, 255, 0.8); border-radius: 10px;">
                FILE FIR
            </button>
        </a>
    </center>
</div>
            </div>
        </div>
    </div>

 <div class="emergency">
        <h3 style="text-align: center; margin-bottom: 35px; font-weight:bold;" >Locate Us</h3>
        <p>
            <h4>Emergency contact no: <a href="#">[+91 6002951289 ]</a></h4>
        </p>
        <p>
            <h4>Email: <a href="#">[quickhelp123@gmail.com ]</a> </h4>
        </p>
        <p>
            <h4>Police Station Near me: <a href="#">[Google Map ]</a> </h4>
        </p>
    </div>

    <div class="footer">
        <p>Copyright 2023</p>
    </div>

<script>
    var sessionTimeout;

    function resetSessionTimeout() {
        clearTimeout(sessionTimeout);
        sessionTimeout = setTimeout(function() {
            // Redirect to a logout or session timeout page
            window.location.href = "logout.jsp";
        }, 300000); // 300,000 milliseconds = 5 minutes
    }

    // Add event listeners to reset the timer when there's user activity
    document.addEventListener("mousemove", resetSessionTimeout);
    document.addEventListener("keydown", resetSessionTimeout);

    // Initialize the session timeout when the page loads
    resetSessionTimeout();
</script>

<script>

//added JavaScript to trigger a logout when the session times out. For example, if the session timeout occurs and the user is on the after_login.jsp page, you can automatically log them out by simulating a click on the logout button.

    var sessionTimeout;

    function resetSessionTimeout() {
        clearTimeout(sessionTimeout);
        sessionTimeout = setTimeout(function() {
            // Simulate a click on the logout button when the session times out
            document.getElementById("logoutButton").click();
        }, 300000); // 300,000 milliseconds = 5 minutes
    }

    // Add event listeners to reset the timer when there's user activity
    document.addEventListener("mousemove", resetSessionTimeout);
    document.addEventListener("keydown", resetSessionTimeout);

    // Initialize the session timeout when the page loads
    resetSessionTimeout();
</script>




</body>

</html>