

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%
String session_username = (String) session.getAttribute("session_username");
%>
 
<!DOCTYPE html>
<html lang="en">

<head>
    <title>FAQ - E-Crime Report Hub</title>
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
              background-image: url('images/17.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            background-color: rgba(9, 118, 165, 0.7);
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
            border-radius: 10px;
        }

        @media (max-width: 767px) {
            .emergency {
                position: static;
                margin: 20px auto;
                width: 90%;
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
    <h3 style="text-align: center; margin-bottom: 20px; color: white;">e-Crime Report Hub: Online FIR Filing and Case
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
               <!--  <li class="active"><a href="index.jsp">Home</a></li> -->
                
                <li class="active"><a href="${session_username != null && !session_username.isEmpty() ? 'after_login.jsp' : 'index.jsp'}">Home</a></li>
                <li><a href="about_us.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
                <!-- <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
            </ul>
        </div>
    </nav>
    <div class="container">
        <h2 style="color: white;" >Frequently Asked Questions (FAQ)</h2>
        <div class="panel-group" id="accordion">

            <!-- FAQ Section 1 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                            Question 1: What is E-Crime Report Hub?
                        </a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                        Answer 1: E-Crime Report Hub is an online platform for filing FIR (First Information Report)
                        for various types of crimes. It allows users to report crimes and manage their cases online.
                    </div>
                </div>
            </div>

            <!-- FAQ Section 2 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                            Question 2: How can I file an FIR online?
                        </a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        Answer 2: To file an FIR online,there are two ways: <br>
                        i) Visit our "Quick FIR" page, fill out the necessary details,
                        and submit the report. <br>
                        ii) Do the normal FIR filing after you're logged in into the account, here you can keep a track
                        of your past
                        complaints as well as their status.
                    </div>
                </div>
            </div>

            <!-- FAQ Section 3 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                            Question 3: What types of crimes can be reported on E-Crime Report Hub?
                        </a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-collapse collapse">
                    <div class="panel-body">
                        Answer 3: E-Crime Report Hub allows you to report various types of crimes, including theft,
                        assault, fraud, drug-related crimes, vandalism, and more. Select the appropriate category when
                        filing your report.
                    </div>
                </div>
            </div>

            <!-- FAQ Section 4 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                            Question 4: How can I check the status of my filed FIR?
                        </a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-collapse collapse">
                    <div class="panel-body">
                        Answer 4: You can check the status of your filed FIR by logging into your account on
                        E-Crime Report Hub and visiting the "My Complaints" section. There, you will find updates on
                        the progress of your case.
                    </div>
                </div>
            </div>

            <!-- FAQ Section 5 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
                            Question 5: Can I edit my filed FIR after submission?
                        </a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-collapse collapse">
                    <div class="panel-body">
                        Answer 5: No, once you have submitted your FIR online, you cannot edit it. If you need to
                        make changes or provide additional information, please contact your local police station or
                        the relevant authorities.
                    </div>
                </div>
            </div>
        </div>
    </div>

 

    <div class="footer">
        <p>Copyright 2023</p>
    </div>




</body>

</html>