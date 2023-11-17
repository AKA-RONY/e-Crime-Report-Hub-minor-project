<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>FILE FIR</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-size: cover;
          background-image: url('images/12.jpg'); 
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center center;
        background-color: rgba(9, 118, 165, 0.7);
    }
    label{
    color: white;
    }
</style>
<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <h2 style="text-align: center; color:white; font-weight: bold;">FILE FIR</h2>
                <form action="FileFIR" method="post">
                    <div class="form-group">
                        <!-- Display the user email from the session -->
                        <label for="userEmail">User Email:</label>
                        <input type="text" class="form-control" id="userEmail" name="userEmail" value="<%= session.getAttribute("user_email") %>" readonly>
                        <!-- Add a hidden field to send user email to the server -->
                        <input type="hidden" id="hiddenUserEmail" name="hiddenUserEmail" value="<%= session.getAttribute("user_email") %>">
                    </div>
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                    </div>
                    <div class="form-group">
                        <label for="emergencyContact">Alternate Number (Emergency Contact):</label>
                        <input type="tel" class="form-control" id="emergencyContact" name="emergencyContact" placeholder="Enter alternate number" required>
                    </div>
                    <div class="form-group">
                        <label for="category">Category:</label>
                        <select class="form-control" id="category" name="category" required>
                            <option value="">Select category</option>
                            <option value="Theft">Theft</option>
                            <option value="Assault">Assault</option>
                            <option value="Fraud">Fraud</option>
                            <option value="Drug-Related Crimes">Drug-Related Crimes</option>
                            <option value="Vandalism">Vandalism</option>
                            <option value="Others">Others</option>
                        </select>
                    </div>
                    <div class="form-group" id="incidentDescriptionGroup" style="display: none;">
                        <label for="description">Incident Description:</label>
                        <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter incident description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="date">When Occurred (Date):</label>
                        <input type="date" class="form-control" id="date" name="date" required>
                    </div>
                    <div class="form-group">
                        <label for "whenOccurred">When Occurred (TIME):</label>
                        <input type="time" class="form-control" id="whenOccurredTime" name="whenOccurredTime" required>
                    </div>
                    <div class="form-group">
                        <label for="location">Where Occurred (Location):</label>
                        <input type="text" class="form-control" id="location" name="location" placeholder="Enter location" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $("#category").change(function () {
                var selectedCategory = $(this).val();
                var incidentDescriptionGroup = $("#incidentDescriptionGroup");
                if (selectedCategory !== "") {
                    incidentDescriptionGroup.show();
                } else {
                    incidentDescriptionGroup.hide();
                }
            });
        });
    </script>
</body>
</html>
 
 
 
 
 
 
 