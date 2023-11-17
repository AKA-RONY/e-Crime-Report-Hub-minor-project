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
            <h1>Understanding Fraud</h1>
        </div>
        <div class="content">
            <div class="top-image">
                <img src="images/cat_fraud_img.jpg"
                    alt="Fraud Image">
            </div>
            <br>
            <p>
                Fraud is a deceptive act or scheme intended to result in financial or personal gain for the perpetrator
                while causing financial or personal loss to the victim. It is a criminal offense that encompasses a wide
                range of fraudulent activities, from identity theft and online scams to financial fraud and forgery.
                Understanding fraud is crucial for individuals and businesses to protect themselves from falling victim
                to fraudulent schemes.
            </p>
            <h2>Key Points About Fraud:</h2>
            <ul>
                <li><b>Deceptive Intent:</b> Fraud involves intentional deception or misrepresentation with the
                    objective of gaining something of value.</li>
                <li><b>Types of Fraud:</b> Fraud can take many forms, including identity theft, credit card fraud,
                    online scams, insurance fraud, investment fraud, and more.</li>
                <li><b>Victims:</b> Anyone can become a victim of fraud, including individuals, businesses, and
                    government organizations.</li>
                <li><b>Consequences:</b> The consequences of fraud can be severe, including financial loss, damage to
                    one's credit, legal trouble, and emotional distress.</li>
                <li><b>Prevention:</b> Preventing fraud involves measures like safeguarding personal information,
                    verifying identities, using secure online practices, and staying informed about common fraud
                    schemes.</li>
            </ul>
            <h2>Common Types of Fraud:</h2>
            <p>Fraud can manifest in various ways, including:</p>
            <ul>
                <li><b>Identity Theft:</b> Stealing personal information to commit financial fraud, apply for credit,
                    or conduct illegal activities under someone else's name.</li>
                <li><b>Credit Card Fraud:</b> Unauthorized use of credit card information to make purchases or
                    withdrawals without the cardholder's consent.</li>
                <li><b>Online Scams:</b> Deceptive schemes conducted over the internet, such as phishing, online
                    auctions fraud, and fake websites.</li>
                <li><b>Investment Fraud:</b> Misleading individuals into investing money in fake or fraudulent
                    investment opportunities.</li>
                <li><b>Insurance Fraud:</b> Submitting false insurance claims to obtain payouts for losses or injuries
                    that did not occur.</li>
                <li><b>Forgery:</b> Creating fake documents or signatures to deceive others into accepting counterfeit
                    items or transactions.</li>
                <li><b>Bank Fraud:</b> Deceptive practices involving banks or financial institutions, such as check
                    kiting and fraudulent loans.</li>
                <li><b>Wire Fraud:</b> Using electronic communications to defraud victims, often involving false
                    representations or requests for money.</li>
                <li><b>Phishing:</b> Sending deceptive emails or messages to trick recipients into revealing personal
                    or financial information.</li>
                <li><b>Ponzi Schemes:</b> Investment schemes that promise high returns but use funds from new investors
                    to pay returns to earlier investors, ultimately collapsing when new investments dry up.</li>
            </ul>
            <p>Preventing fraud requires vigilance, awareness, and responsible online and financial practices. Staying
                informed about the latest fraud tactics and taking steps to protect personal and financial information
                are essential in minimizing the risk of falling victim to fraudulent schemes.</p>
        </div>
    </div>
         <div class="footer">
        <p>Copyright 2023</p>
    </div>
    
</body>

</html>