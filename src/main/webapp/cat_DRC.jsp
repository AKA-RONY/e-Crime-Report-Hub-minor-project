<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%
String session_username = (String) session.getAttribute("session_username");
%>
    

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Drug-Related Crimes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        /* Custom CSS for the body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            background-color: rgba(9, 118, 165, 0.7);
        }

        /* Style for the title */
        .title {
            text-align: center;
            margin-top: 10px;
            font-size: 36px;
            color: white;
        }

        /* Style for the content */
        .content {
            max-width: auto;
            margin: auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            color: #333;
        }

        .top-image {
            text-align: center;
        }

        .top-image img {
            max-width: 100%;
            height: auto;
        }

        .content {
            font-size: 20px;
        }
    </style>
</head>



<head>
    <title>E-Crime Report Hub</title>
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
            background-image: url('images/16.jpg'); 
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
            position:auto;
            left: 0;
            bottom: 10px;
            width: 100%;
            background-color: rgba(13, 2, 2, 0.7);
            color: white;
            text-align: center;
        }
    </style>
    <h3 style="text-align: center; margin-bottom: 20px; color: white;">e-Crime Report Hub: Online FIR Filing and Case
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
                               <li class="active"><a href="${session_username != null && !session_username.isEmpty() ? 'after_login.jsp' : 'index.jsp'}">Home</a></li>

                <li><a href="about_us.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
                <!-- <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
            </ul>
        </div>
    </nav>


<body>
    <div class="container">
        <div class="title">
            <h1>Understanding Drug-Related Crimes</h1>
        </div>
        <div class="content">
            <div class="top-image">
                <img src="images/cat_drc_img.jpeg"
                    alt="Drug-Related Crimes Image">
            </div>
            <br>
            <p>
                Drug-related crimes encompass a category of criminal activities associated with illegal drugs and
                controlled substances. These crimes involve the production, distribution, possession, trafficking, or
                abuse of illicit substances, such as narcotics, hallucinogens, and prescription drugs. Understanding
                drug-related crimes is essential for addressing the associated public health and safety concerns.
            </p>
            <h2>Key Points About Drug-Related Crimes:</h2>
            <ul>
                <li><b>Illegal Substances:</b> Drug-related crimes revolve around illegal drugs and controlled
                    substances prohibited by law.</li>
                <li><b>Types of Crimes:</b> Drug-related crimes can include drug trafficking, drug possession,
                    manufacturing, distribution, drug abuse, and prescription drug fraud.</li>
                <li><b>Impact:</b> These crimes can have severe societal impacts, including addiction, health
                    problems, family disruption, and increased criminal activity.</li>
                <li><b>Legal Consequences:</b> Individuals involved in drug-related crimes can face criminal charges,
                    fines, probation, imprisonment, and court-ordered treatment programs.</li>
                <li><b>Prevention and Treatment:</b> Combating drug-related crimes often involves prevention
                    strategies, rehabilitation programs, and educational initiatives.</li>
            </ul>
            <h2>Common Types of Drug-Related Crimes:</h2>
            <p>Drug-related crimes encompass various illegal activities, including:</p>
            <ul>
                <li><b>Drug Trafficking:</b> The illegal transportation, distribution, and sale of drugs, often
                    involving large quantities.</li>
                <li><b>Drug Possession:</b> The unlawful possession of illegal drugs or controlled substances for
                    personal use.</li>
                <li><b>Manufacturing:</b> Illegally producing drugs, such as methamphetamine or synthetic opioids.</li>
                <li><b>Prescription Drug Fraud:</b> Obtaining or distributing prescription drugs through fraudulent
                    means.</li>
                <li><b>Drug Abuse:</b> Non-medical and illegal use of drugs, leading to addiction and potential
                    criminal behavior.</li>
                <li><b>Money Laundering:</b> Concealing the proceeds from drug-related crimes through financial
                    transactions.</li>
                <li><b>Gang Involvement:</b> Drug-related crimes are often associated with criminal organizations and
                    gangs involved in drug trafficking.</li>
            </ul>
            <p>Efforts to combat drug-related crimes include law enforcement, addiction treatment, education, and
                community support. Addressing the root causes of drug abuse and addiction is essential in reducing
                drug-related criminal activities.</p>
        </div>
    </div>
    
     <div class="footer">
        <p>Copyright 2023</p>
    </div>
    
</body>

</html>