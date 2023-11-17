
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit FIR Record</title>
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
            background-color: red ;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delete FIR Record</h2>
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
                SELECT  name, emergency_contact, category, description, when_occured_date, when_occurred_time, where_occured_location, FIR_status
                FROM quick_fir_reports
                WHERE fir_id = "${param.id}"
            </sql:query>
            <form action="AdminDeleteQFIRRecords" method="post">
                <div class="form-group">
                    <label for="firId">FIR ID:</label>
                    <input type="text" class="form-control" id="firId" name="firId" value="${param.id}" required readonly>
                </div>
                <c:forEach var="row" items="${firData.rows}">
                 
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" value="${row.name}" required readonly>
                    </div>
                    <div class="form-group">
                        <label for="emergencyContact">Emergency Contact:</label>
                        <input type="text" class="form-control" id="emergencyContact" name="emergencyContact" value="${row.emergency_contact}" required readonly> 
                    </div>
                    <div class="form-group">
                        <label for="category">Category:</label>
                        <input type="text" class="form-control" id="category" name="category" value="${row.category}" required readonly>
                    </div>
                    <div class="form-group">
                        <label for="description">Description:</label>
                        <textarea class="form-control" id="description" name="description" rows="3" required readonly >${row.description}</textarea> 
                    </div>
                    <div class="form-group">
                        <label for="whenOccurredDate">When Occurred Date:</label>
                        <input type="date" class="form-control" id="whenOccurredDate" name="whenOccurredDate" value="${row.when_occured_date}" required readonly>
                    </div>
                    <div class="form-group">
                        <label for="whenOccurredTime">When Occurred Time:</label>
                        <input type="time" class="form-control" id="whenOccurredTime" name="whenOccurredTime" value="${row.when_occurred_time}" required readonly>
                    </div>
                    <div class="form-group">
                        <label for="whereOccurredLocation">Where Occurred Location:</label>
                        <input type="text" class="form-control" id="whereOccurredLocation" name="whereOccurredLocation" value="${row.where_occured_location}" required readonly>
                    </div>
                    <div class="form-group">
                        <label for="newFIRStatus">New FIR Status:</label>
                        <input type="text" class="form-control" id="newFIRStatus" name="newFIRStatus" value="${row.FIR_status}" readonly>
                    </div>
                </c:forEach>
                <button type="submit"  class="btn btn-primary btn-update">Delete</button>
            </form>
        </c:if>
    </div>
</body>
</html>
