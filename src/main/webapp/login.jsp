
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-size: cover;
        background-image: url('images/11.jpg'); 
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center center;
        background-color: rgba(9, 118, 165, 0.7);
    }

      label {
    color: white;
    font-weight: bold;
}
</style>

<body>

    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <h2 style="text-align: center; color:white ; font-weight: bold;">Login</h2>
                <form action="loginServlet" method="post">
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email"
                            required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" id="password" name="password"
                            placeholder="Enter your password" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                    <br>
                    <p > <a style=color:white; href="registration.jsp">New User? Create New Account</a>
                </form>
                
                <!-- Display error message if it exists -->
                <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
                <% if (errorMessage != null) { %>
                    <div class="alert alert-danger" role="alert" style="margin-top: 10px;">
                        <strong>Error:</strong> <%= errorMessage %>
                    </div>
                <% } %>
                
            </div>
        </div>
    </div>

</body>

</html>

 