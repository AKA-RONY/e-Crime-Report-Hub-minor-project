<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Registration Form</title>
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
    background-color: rgba(9, 118, 165, 0.7);
}

    body {
        font-family: Arial, sans-serif;
        margin: 0;	
        padding: 0;
        background-image: url('images/7.jpg'); 
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center center;
        background-color: rgba(9, 118, 165, 0.5);
    }
    label {
    color: white;
}
</style>

<body>

    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <h1 style="text-align: center; color:white;font-weight: bold;">Registration Form</h2>
                <form onsubmit="return validateForm()" method="post" action="RegisterServlet" >
                    <div class="form-group">	
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                    </div>
                  
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="useremail" name="email" placeholder="Enter your email" required>
                        <span id="emailError" style="color: red;"></span>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" id="userpassword" name="password" placeholder="Enter your password"
                            required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone Number:</label>
                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number"
                            required>
                    </div>
                    <div class="form-group">
                        <label for="dob">Date of Birth:</label>
                        <input type="date" class="form-control" id="dob" name="dob"  required>
                    </div>
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <input type="text" class="form-control" id="address" name="address" placeholder="Enter your address" required>
                    </div>
                    <div class="form-group">
                        <label for="document">Government Issued Document:</label>
                        <select class="form-control" id="document" name="document_type" onchange="showDocumentDetails()" required>
                            <option value="select">Select any one</option>
                            <option value="aadhar">Aadhaar Number</option>
                            <option value="pan">PAN Number</option>
                            <option value="driving">Driving License Number</option>
                            <option value="passport">Passport Number</option>
                        </select>
                    </div>
                    <div id="documentDetails" class="form-group" style="display: none;">
                        <label for="documentDetailsInput">Document Details:</label>
                        <input type="text" class="form-control" id="documentDetailsInput" name="document_details"
                            placeholder="Enter document details">
                    </div>
                    <div class="form-group">
                        <label>
                            <input type="checkbox" id="agreement" required>
                            I AGREE THAT ALL THE INFO MENTIONED ABOVE ARE LEGIT AND I WILL USE THIS WEBSITE WISELY AS
                            PER
                            THE LAW
                        </label>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block"  >Submit</button>
                    <p><a style=color:white; href="login.jsp">Already a User? Login here</a>
                </form>
            </div>
        </div>
    </div>

    <script>
        function validateForm() {
            var emailInput = document.getElementById("email");
            var emailError = document.getElementById("emailError");
            var email = emailInput.value;

            if (email.indexOf("@") === -1) {
                emailError.textContent = "Please enter a valid email address.";
                emailInput.focus();
                return false;
            }

            return true;
        }

        function showDocumentDetails() {
            var documentSelect = document.getElementById("document");
            var documentDetails = document.getElementById("documentDetails");
            var documentDetailsInput = document.getElementById("documentDetailsInput");

            if (documentSelect.value !== "select") {
                documentDetails.style.display = "block";
                documentDetailsInput.setAttribute("required", "true");
                // Set the placeholder based on the selected option
                var selectedOption = documentSelect.options[documentSelect.selectedIndex].text;
                documentDetailsInput.placeholder = "Enter " + selectedOption + " details";
            } else {
                documentDetails.style.display = "none";
                documentDetailsInput.removeAttribute("required");
            }
        }

    </script>

</body>

</html>