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
             background-image: url('images/16.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            background-color: rgba(9, 118, 165, 0.2);
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
            /* background-image: url('g1.jpg'); */
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
            <h1>Understanding Theft</h1>
        </div>
        <div class="content">
            <div class="top-image">
                <img src="images/cat_theft_img.jpg"
                    alt="Theft Image">
            </div>
            <br>
            <p>
                <b>Theft</b> is a criminal act that involves taking someone else's property without their consent with
                the
                intention of permanently depriving them of it. It's a common crime worldwide and can encompass a range
                of illegal activities. Here's a detailed explanation of theft, including its types:
            </p>
            <br>
            <p><b style="font-size: 25px;">What is Theft?</b></p>
            <p>
                Theft is a property crime that involves unlawfully taking or appropriating someone else's belongings or
                assets without their permission. This act violates a person's right to possess and enjoy their property,
                and it's considered a criminal offense in most legal systems. Theft can involve various items, including
                money, electronics, vehicles, jewelry, and more.
            </p>
            <br>
            <p><b style="font-size: 25px;">Elements of Theft:</b></p>

            <p>To constitute theft, several key elements must be present:</p>
            <p>
                <b>1.Taking:</b>: The offender must physically or fraudulently take possession of another person's
                property. This includes scenarios like pickpocketing, shoplifting, and breaking into someone's home.
            </p>
            <p>
                <b>2.Without Consent: </b>: The property must be taken without the consent or permission of the owner.
                Consent can be explicit or implied. For example, borrowing a friend's book with their permission is not
                theft, but taking it without their knowledge or approval is.
            <p>
                <b>3.Intent:</b>: The perpetrator must have the intent to permanently deprive the owner of their
                property. Temporary possession, such as borrowing with the intention to return, doesn't constitute
                theft.
            </p>
            <br>

            <p><b style="font-size: 25px;">Types of Theft:</b></p>
            <p>Theft comes in various forms, each categorized based on specific circumstances or characteristics of the
                crime. Common types of theft include:</p>
            <br>
            <p>
                <b>1.Petty Theft:</b>: Also known as larceny, this involves the theft of low-value items. It's typically
                considered a misdemeanor, with less severe penalties compared to grand theft.
            </p>
            <p>
                <b>2.Grand Theft: </b>: Grand theft involves the theft of higher-value items, often classified based on
                a specific dollar threshold. It is considered a felony in many jurisdictions and carries more severe
                punishments.
            </p>
            <p>
                <b>3.Shoplifting:</b>: This type of theft occurs in retail stores when individuals steal merchandise. It
                can involve concealing items, switching price tags, or leaving without paying.


            </p>
            <p>
                <b>4.Auto Theft:</b>: Stealing motor vehicles, such as cars, motorcycles, or trucks, is a common form of
                theft. It may also be referred to as carjacking when force or threats are used to take the vehicle.

            </p>
            <p>
                <b>5.Burglary:</b>: Unlike theft, burglary involves illegally entering a building or property with the
                intent to commit theft or other crimes. The act of breaking and entering is a crucial component of
                burglary.

            </p>
            <p>
                <b>6.Robbery:</b>: Robbery is a more serious crime that involves theft with the use of force,
                intimidation, or violence. It typically occurs in person-to-person confrontations, such as muggings.

            </p>

            <p>
                <b>7.Embezzlement:</b>:This is a form of theft where an individual misappropriates funds or property
                entrusted to them, often in an employment or fiduciary capacity.
            </p>


            <p>
                <b>8.Identity Theft: </b>:Identity theft occurs when someone steals another person's personal
                information, such as Social Security numbers or credit card details, to commit fraudulent activities or
                financial theft.
            </p>


            <p>
                <b>9.Cyber Theft: </b>In the digital age, theft can extend to cybercrimes, including hacking, phishing,
                and online scams aimed at stealing sensitive information or funds.
            </p>
            <p>
                <b>10.Employee Theft: </b>This involves employees stealing from their employers, such as taking office
                supplies, embezzling funds, or stealing company property.
            </p>
            <br>

            <p><b style="font-size: 25px;">Legal Consequences:</b> </p>
            <p>The legal consequences for theft vary depending on the jurisdiction and the severity of the crime.
                Penalties may include fines, probation, community service, restitution to victims, and imprisonment.
                Repeat offenders or those involved in more serious theft crimes are likely to face more severe
                punishments.</p>
            <br>
            <p>It's essential to recognize that theft is a crime with real consequences, and society relies on laws and
                law enforcement agencies to deter and address theft in its various forms.</p>

        </div>
    </div>
           <div class="footer">
        <p>Copyright 2023</p>
    </div>
</body>

</html>