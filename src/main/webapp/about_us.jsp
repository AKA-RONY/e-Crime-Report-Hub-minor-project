<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%
String session_username = (String) session.getAttribute("session_username");
%>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>About Us - E-Crime Report Hub</title>
    <style>
        /* Custom CSS for the body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
              background-image: url('images/2.jpg' );
              
            background-size: cover;
            background-repeat: repeat;
            background-attachment: fixed;
            background-position: center center;
            background-color: rgba(9, 118, 165, 0.7);
            color: #333;
        }

        /* Header styles */
        header {
            text-align: center;
            margin-top: 10px;
        }

        header h1 {
            font-size: 36px;
            color: white;
        }

        /* Container styles */
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            font-size: 20px;
           

        }

        /* Section title styles */
        h2 {
            font-size: 24px;
            margin-top: 20px;
        }

        /* List styles */
        ul {
            list-style: disc;
            margin-left: 20px;
        }

        /* Team member styles */
        .team-member {
            margin-top: 20px;
            text-align: center;
            border: 1px solid #ccc;
            padding: 20px;
            margin: 10px;
            flex: 0 0 calc(30% - 20px);
            /* Adjusted width for desktop */
        }

        .team-member img {
            max-width: 100%;
            height: auto;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        /* Media query for mobile devices */
        @media (max-width: 768px) {
            .team-members {
                flex-direction: column;
                /* Display members in a vertical column */
            }

            .team-member {
                flex: 0 0 100%;
                /* Full width for mobile */
            }
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
               <!--   <li class="active"><a href="index.jsp">Home</a></li>-->
              <li class="active"><a href="${session_username != null && !session_username.isEmpty() ? 'after_login.jsp' : 'index.jsp'}">Home</a></li>
               <!--  <li class="active"><a href="${session.getAttribute('session_username') != null ? 'after_login.jsp' : 'index.jsp'}">Home</a></li>  -->
                <li><a href="about_us.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="FAQ.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
         
            </ul>
        </div>
    </nav>


    <header>
       <!--  <h1 style= font-weight:bold;>About Us</h1> -->
    </header>
    <section class="mission">
        <div class="container">
         <h1 style= font-weight:bold;text-align:center;>About Us</h1>
         <br>
            <h2>Our Mission</h2>
            <p>
                E-Crime Report Hub is committed to providing a secure and accessible platform for victims of crimes to
                report incidents online and manage their cases effectively. Our mission is to bridge the gap between law
                enforcement and the community, ensuring a swift and just response to criminal activities.
            </p>
        </div>
    </section>
    <section class="values">
        <div class="container">
            <h2>Our Core Values</h2>
            <ul>
                <li><strong>Integrity:</strong> We uphold the highest standards of honesty and ethics in all our
                    interactions.</li>
                <li><strong>User-Centricity:</strong> Our users' needs and concerns are at the heart of our platform's
                    design and operation.</li>
                <li><strong>Transparency:</strong> We operate with transparency, ensuring that our users are
                    well-informed throughout the process.</li>
                <li><strong>Community Impact:</strong> We are committed to making our communities safer by facilitating
                    crime reporting and prevention.</li>
            </ul>
        </div>
    </section>
    <section class="why-choose-us">
        <div class="container">
            <h2>Why Choose Us</h2>
            <p>
                When you choose E-Crime Report Hub, you benefit from:
            </p>
            <ul>
                <li>Efficient online FIR filing and case management.</li>
                <li>Experienced professionals dedicated to your safety.</li>
                <li>Timely updates on your case status.</li>
                <li>A user-friendly platform accessible from anywhere.</li>
                <li>Community-focused initiatives for safer neighborhoods.</li>
            </ul>
        </div>
    </section>
    <section class="team">
        <div class="container">
            <h2 style="text-align: center;">Our Team</h2>
            <div class="team-members" style="display: flex; justify-content: space-between; flex-wrap: wrap;">
                <!-- Added flex-wrap -->
                <div class="team-member" style="flex: 0 0 25%; border: 1px solid #ccc; padding: 20px; margin: 10px;">
                    <img src="images/salvik4.5.jpg" alt="John Doe">
                    <hr>
                    <hr>
                    <h3>Salvik Bhowal</h3>
                    <p>Core Developer <br>
                    (Team Lead)</p>
                 
                    <p>An aspiring data professional passionate about leveraging data to drive insights and informed decision-making. Skilled in Data Engineering, Data Analysis, programming. 
                    </p>
                </div>
                
                
                <div class="team-member" style="flex: 0 0 25%; border: 1px solid #ccc; padding: 20px; margin: 10px;">
                    <img src="images/sbarua.jpg" alt="Jane Smith">
                    <h3>Suvradip Barua</h3>
                   
                    <p> He's responsible for overseeing an organization's technological vision, strategy, and implementation to align with business objectives,  leading the development and execution of technology initiatives, ensuring innovation and efficiency within the company.</p>
                        
                       

 
                </div>
                <div class="team-member" style="flex: 0 0 25%; border: 1px solid #ccc; padding: 20px; margin: 10px;">
                    <img src="images/ani.jpg" alt="Emily Brown">
                    <h3>Anindita Chakraborty</h3>
                    <p>Community Manager</p>
                    <p>she dedicated to fostering engaging interactions and cultivating a vibrant online space. Committed to empowering and amplifying the voices within our community..</p>
                </div>
            </div>
        </div>
    
  </section>
  
    <script>
        // Get the referrer URL
        var referrer = document.referrer;

        // Check if the referrer is index.jsp
        if (referrer.endsWith("index.jsp")) {
            // User came from index.jsp, so enable the Home button to return to index.jsp
            var homeButton = document.querySelector("a[href='index.jsp']");
            if (homeButton) {
                homeButton.addEventListener("click", function (e) {
                    e.preventDefault(); // Prevent the default link behavior
                    window.location.href = "index.jsp"; // Redirect to index.jsp
                });
            }
        }
    </script>
	





</body>
<footer style="position: auto; left: 0; bottom: 0; width: 100%; background-color: rgba(13, 2, 2, 0.7); color: white; text-align: center;">
    <p>&copy; 2023 E-Crime Report Hub</p>
</footer>

</html>
