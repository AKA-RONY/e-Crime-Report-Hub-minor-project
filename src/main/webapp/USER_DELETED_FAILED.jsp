<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style >
body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
               background-image: url('images/cantdeluser.jpg'); 
         
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            background-color: rgba(255, 255, 255, 0.3);

        }
</style>

    <title>USER DELETION UNSUCCESSFUL !!!</title>
</head>
<body>
    <div style="text-align: center; margin-top: 50px;">
        <h1 >USER CANT BE DELETED</h1>
        <p style=color:white;>User can't be deleted from the database</p>
         <a  style=color:black;font-weight:bold; href="admin_usersdb.jsp">Back to Home</a>
    </div> 
</body>
</html>






