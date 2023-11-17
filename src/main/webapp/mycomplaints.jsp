<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>


<head>

    <title>E-Crime Report Hub / My Complaints</title>
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

        /* Style for the complaint section */
        .complaint {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
        }

        .complaint h3 {
            margin-top: 0;
        }

        .status {
            font-weight: bold;
        }

        /* Additional styles for different status */
        .status-solved {
            color: green;
        }

        .status-pending {
            color: orange;
        }

        .status-processing {
            color: blue;
        }
        
    
         .table td {
            color: white;
        }
   
        
         .b1 {
            font-weight: bold;
            color: black;
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
                        <li><a href="cat_vandalism">Vandalism</a></li>
                    </ul>
                </li>
                <li class="active"><a href="after_login.jsp">Home</a></li>
                <li><a href="about_us.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${session_username }</a></li>
                <li><a href="FAQ.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
                <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
            </ul>
        </div>
    </nav>




 <h2 style="text-align: center; margin-bottom: 20px; color: white;">My Complaints </h3>

<sql:setDataSource
        var="ds"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/ecrh"
        user="root"
        password="rony"
/>

<c:set var="userEmail" value="${sessionScope.user_email}" />

<sql:query dataSource="${ds}" var="rs">
    SELECT fir_id, name, category, description, FIR_status, FIR_REPORT_DATE
    FROM after_login_fir
    WHERE user_email = '${user_email}'
</sql:query>



<div class="table-responsive">

<table class="table table-bordered">
    <tr class="b1">
        <td>FIR_ID</td>
        <td>NAME</td>
        <td>CATEGORY</td>
        <td>DESCRIPTION</td>
        <td>FIR_STATUS</td>
        <td>FIR_REPORT_DATE</td>
    </tr>

    <c:forEach var="row" items="${rs.rows}">
        <tr>
            <td><c:out value="${row.fir_id}"/></td>
            <td><c:out value="${row.name}"/></td>
            <td><c:out value="${row.category}"/></td>
            <td><c:out value="${row.description}"/></td>
            <td><c:out value="${row.FIR_status}"/></td>
            <td><c:out value="${row.FIR_REPORT_DATE}"/></td>
        </tr>
    </c:forEach>
</table>
</div>

    <div class="footer">
        <p>Copyright 2023</p>
    </div>

</body>

</html>