<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>E-Crime Report Hub</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Custom CSS for the body */
 
         .container{
         opacity: 0.9 }
      
     
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/3.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
          /*  background-color: rgba(9, 118, 165, 0.1); 
             
         
    
        Custom CSS for the "Emergency" container */
        .emergency {
            position: absolute;
            bottom: 1px;
            right: 10px;
            width: 400px;
            margin-bottom: 50px;
            border: 1px solid #070000;
            padding: 10px;
            background-color: rgba(249, 249, 249, 1);
            /* Adjusted background color with transparency */
            border-radius: 10px;
        
        opacity: 0.75}

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
        Management System
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
                <li class="active"><a href="index.jsp">Home</a></li>

                <li><a href="about_us.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="FAQ.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <div class="Qfir">
                    <center> <button id='register'
                            style="width: 100%;color:black; font-weight:bold; height: 100px; margin-top: 40px; background-color: rgba(255, 255, 255, 0.9); border-radius: 10px;"
                            onclick="location.href='registration.jsp';">REGISTER</button>
                    </center>
                </div>
                <div class="Qfir">
                    <center> <button id='login'
                            style="width: 100%; color:black; font-weight:bold; height: 100px; margin-top: 10px; background-color: rgba(255, 255, 255, 0.9); border-radius: 10px;"
                            onclick="location.href='login.jsp';">LOGIN</button>
                    </center>
                </div>
                <div class="Qfir">
                    <center> <button id='qfir'
                            style="width: 100%;color:black;  font-weight:bold;height: 100px; margin-top: 10px; background-color: rgba(255, 255, 255, 0.9); border-radius: 10px;  "
                            onclick="location.href='quickfir.jsp';">QUICK
                            FIR</button></center>
                </div>
            </div>
        </div>
    </div>

    <div class="emergency">
        <h3 style="text-align: center;font-weight: bold; margin-bottom: 35px;">Locate Us</h3>
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
        // Clear any existing session
        if (sessionStorage) {
            sessionStorage.clear();
        }
        // Disable the browser's back button
        history.pushState(null, null, location.href);
        window.onpopstate = function () {
            history.go(1);
        };
    </script>
  
    
</body>

</html>
