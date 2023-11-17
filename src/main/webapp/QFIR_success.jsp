<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FIR REPORTED SUCCESSFULLY</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="alert alert-success">
            <h2>FIR Reported Successfully</h2>
            <p>Your Report was successfully addressed. We will reach out to you soon...</p>
            <p><a href="index.jsp" class="btn btn-primary">Go back Home </a></p>
        </div>
    </div>
    
        <script>
     
        // Disable the browser's back button
        history.pushState(null, null, location.href);
        window.onpopstate = function () {
            history.go(1);
        };
    </script>
    
</body>
</html>
