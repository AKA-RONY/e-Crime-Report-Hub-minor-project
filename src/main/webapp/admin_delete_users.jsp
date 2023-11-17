
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Users Data </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            margin-top: 50px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-update {
            background-color: red;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit FIR Record</h2>
        <c:if test="${not empty param.id}">
            <sql:setDataSource
                var="ds"
                driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://localhost:3306/ecrh"
                user="root"
                password="rony"
            />
            <c:set var="firId" value="${param.id}" />
            <sql:query dataSource="${ds}" var="firData">
                SELECT name, email, password, phone, dob, address, document_type, document_details
                FROM users
                WHERE user_id = ${param.id}
            </sql:query>
            <form action="AdminDeleteUsers" method="post">
                <div class="form-group">
                    <label for="userId">User ID:</label>
                    <input type="text" class="form-control" id="userId" name="userId" required placeholder="User ID"  value="${param.id}" required readonly>
                </div>
                <c:forEach var="row" items="${firData.rows}">
                    <div class="form-group">
                         <label for="name">Name:</label>
                         <input type="text" class="form-control" id="name" name="name" required placeholder="User Name" value="${row.name}" required readonly>
                    </div>
                    <div class="form-group">
                         <label for="email">Email:</label>
                        <input type="text" class "form-control" id="email" name="email" required placeholder="User Email" value="${row.email}" required readonly>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                         <input type="text" class="form-control" id="password" name="password" required placeholder="Password" value="${row.password}" required readonly>
                    </div>
                    <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number" value="${row.phone}" required readonly>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" class="form-control" id="dob" name="dob" placeholder="Date of Birth" value="${row.dob}"required readonly>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="Address" value="${row.address}"required readonly>
            </div>
            <div class="form-group">
                <label for="documentType">Document Type:</label>
                <input type="text" class="form-control" id="documentType" name="documentType" placeholder="Document Type" value="${row.document_type}"required readonly>
            </div>
            <div class="form-group">
                <label for="documentDetails">Document Details:</label>
                <input type="text" class="form-control" id="documentDetails" name="documentDetails" placeholder="Document Details" value="${row.document_details}"required readonly>
            </div>
                </c:forEach>
                <button type="submit" class="btn btn-primary btn-update">Delete</button>
            </form>
        </c:if>
    </div>
</body>
</html>


