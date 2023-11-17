<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<style>
</style>
<body>
    <div class="container mt-5">
        <div class="alert alert-success">
            <h2>Registration Successful</h2>
            <p>Your registration was successful. You can now login to your account.</p>
            <p><a href="login.jsp" class="btn btn-primary">Go to Login</a></p>
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
