<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


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
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">More <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="admin_usersdb.jsp">Users Database</a></li>
                        <li><a href="admin_QFE.jsp">Quick Fir Entries</a></li>
                 
                      
                    </ul>
                </li>
                <li class="active"><a href="admin_homepage.jsp">Home</a></li>
                <!-- <li><a href="about_us.jsp">About Us</a></li>  -->
            </ul>
            <ul class="nav navbar-nav navbar-right">
               <!--  <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${session_username }</a></li>  -->
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> ADMIN PANEL</a></li>
                <li><a href="add_admin.jsp"><span class="glyphicon glyphicon-paperclip"></span> Add Admin</a></li>
                <li><a href="AdminLogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
            </ul>
        </div>
    </nav>




 <h2 style="text-align: center; margin-bottom: 20px; color: white;font-weight:bold;"> ALL REGISTERED USERS </h3>

<sql:setDataSource
        var="ds"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/ecrh"
        user="root"
        password="rony"
/>

<c:set var="userEmail" value="${sessionScope.user_email}" />

<sql:query dataSource="${ds}" var="rs">
    SELECT user_id , name ,
     email , password , phone ,
      dob , address , document_type ,
      document_details,registration_date
     FROM users;
  
</sql:query>



<div class="table-responsive">

<table class="table table-bordered">
    <tr class="b1">
        <td>USER_ID</td>
        <td>NAME</td>
        <td>USER_EMAIL</td>
        <td>USER_PASSWORD</td>
        <td>USER_PHONE</td>
        <td>USER_DOB</td>
        <td>USER_ADDRESS</td>
        <td>USER_DOCUMENT_TYPE</td>
        <td>USER_DOCUMNENT_DETAILS </td>
        <td>USER_REGISTRATION_DATE </td>
         <td> EDIT</td>
       <td> DELETE</td>
       
        
    </tr>

    <c:forEach var="row" items="${rs.rows}">
        <tr>
            <td><c:out value="${row.user_id}"/></td>
            <td><c:out value="${row.name}"/></td>
            <td><c:out value="${row.email}"/></td>
            <td><c:out value="${row.password}"/></td>
            <td><c:out value="${row.phone}"/></td>
            <td><c:out value="${row.dob}"/></td>
            <td><c:out value="${row.address}"/></td>
            <td><c:out value="${row.document_type}"/></td>
            <td><c:out value="${row.document_details}"/></td>
            
            
      <td>
    <c:choose>
        <c:when test="${not empty row.registration_date}">
            <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${row.registration_date}" />
        </c:when>
        <c:otherwise>N/A</c:otherwise>
    </c:choose>
</td>

 <td><a href="admin_edit_userdb.jsp?id=${row.user_id}">Edit</a></td>

 
			<td><a href="admin_delete_users.jsp?id=${row.user_id}">Delete</a></td>
            
        </tr>
    </c:forEach>
</table>
</div>

    <div class="footer">
        <p>Copyright 2023</p>
    </div>

</body>

</html>
