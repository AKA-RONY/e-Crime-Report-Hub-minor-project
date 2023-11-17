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
            <h1>Understanding Vandalism</h1>
        </div>
        <div class="content">
            <div class="top-image">
                <img src="images/cat_vandal_img.jpg"
                    alt="Vandalism Image">
            </div>
            <br>
            <p>
                Vandalism refers to the deliberate and often malicious destruction, defacement, or damage of property,
                public or private, without the owner's consent. It encompasses a wide range of destructive activities,
                such as graffiti, breaking windows, spray-painting walls, damaging vehicles, and other forms of property
                damage. Vandalism is considered a criminal act in most jurisdictions and is subject to legal
                consequences.
            </p>
            <p>Here are some key points to understand about vandalism:</p>
            <p>
                <b>Malicious Intent</b>: Vandalism involves intentionally damaging or defacing property. It is not
                accidental
                damage but rather a willful act carried out with the intent to harm or deface.
            </p>
            <p>
                <b>Property Damage</b>: Vandalism can target various types of property, including buildings, vehicles,
                public
                infrastructure, public art, and private possessions. The damage can take the form of graffiti, broken
                windows, smashed mailboxes, or other destructive acts.
            </p>
            <p>
                <b>Graffiti</b>: One common form of vandalism is graffiti, where individuals use paint or markers to
                create
                unauthorized artwork or markings on walls, buildings, or public spaces. While graffiti can be seen as an
                art form by some, it becomes vandalism when it is done without permission
            </p>
            <p>
                <b>Legal Consequences</b>: Vandalism is illegal in most places, and those caught engaging in such
                activities
                can face criminal charges. Penalties may include fines, probation, community service, or even
                imprisonment, depending on the severity of the vandalism and local laws.
            </p>
            <p>
                <b>Impact on Communities</b>: Vandalism not only causes financial costs for property owners but also
                negatively
                affects the aesthetics and safety of communities. Graffiti and damaged properties can create a sense of
                disorder and insecurity.

            </p>
            <p>
                <b>Prevention and Awareness</b>: Communities and property owners often take measures to prevent
                vandalism, such
                as security cameras, protective barriers, and neighborhood watch programs. Public awareness campaigns
                may also educate people about the consequences of vandalism.

            </p>
            <p>
                <b>Art vs. Vandalism</b>: There can be a fine line between street art and vandalism. Some street artists
                create
                works that are considered art by some but vandalism by others. Legal definitions and public opinion on
                this matter can vary.


            </p>
            <p>
                <b>Restitution</b>: In some cases, individuals found guilty of vandalism may be required to pay
                restitution to
                the property owner to cover the cost of repairing the damage.

            </p>
            <p> Vandalism is considered a social issue because it not only results in property damage but also has
                broader implications for the community's well-being and sense of security. Efforts to prevent and
                address vandalism often involve a combination of law enforcement, community involvement, and public
                awareness campaigns.</p>
        </div>
    </div>
        <div class="footer">
        <p>Copyright 2023</p>
    </div>
    
</body>

</html>