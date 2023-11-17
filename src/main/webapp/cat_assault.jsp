
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
                <li><a href="FAQ.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
                <!-- <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
            </ul>
        </div>
    </nav>


<body>
    <div class="container">
        <div class="title">
            <h1>Understanding Assault</h1>
        </div>
        <div class="content">
            <div class="top-image">
                <img src="images/cat_ass_img.jpg"
                    alt="Assault Image">
            </div>
            <br>
            <p>
                Assault refers to the intentional act of causing apprehension of harmful or offensive contact or the
                intentional infliction of bodily harm upon another person. It is a serious offense that can have
                various forms and legal consequences.
            </p>
            <h2>Key Points About Assault:</h2>
            <ul>
                <li><b>Intentional Act:</b> Assault involves an intentional act, where the person intends to cause
                    harm or instill fear in another.</li>
                <li><b>Physical and Psychological:</b> Assault can be physical, involving bodily harm, or psychological,
                    where the victim fears impending harm.</li>
                <li><b>Forms of Assault:</b> Assault can take various forms, including simple assault, aggravated
                    assault, sexual assault, and domestic violence.</li>
                <li><b>Legal Consequences:</b> Those found guilty of assault may face criminal charges, fines,
                    probation,
                    imprisonment, or restraining orders.</li>
                <li><b>Self-Defense:</b> In some cases, individuals may claim self-defense as a legal justification for
                    their actions.</li>
            </ul>
            <h2>Common Forms of Assault:</h2>
            <p>Assault can manifest in different ways, including:</p>
            <ul>
                <li><b>Simple Assault:</b> Involves the threat of harm or minor physical contact without significant
                    injury.</li>
                <li><b>Aggravated Assault:</b> Involves more serious harm, often with the use of a weapon or in cases
                    where serious injury is inflicted.</li>
                <li><b>Sexual Assault:</b> Non-consensual sexual contact or penetration, a severe criminal offense.</li>
                <li><b>Domestic Violence:</b> Assault within the context of domestic relationships, including spousal
                    abuse and child abuse.</li>
            </ul>
            <p>Efforts to combat assault include legal measures, support for victims, education on conflict resolution,
                and awareness campaigns. Understanding the various forms of assault is crucial in addressing this
                significant societal issue.</p>
        </div>
    </div>
    
     <div class="footer">
        <p>Copyright 2023</p>
    </div>
    
</body>

</html>