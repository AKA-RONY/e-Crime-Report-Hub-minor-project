<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
               background-image: url('images/10.jpg'); 
            /* Replace 'your-image-url.jpg' with your image URL */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            background-color: rgba(255, 255, 255, 0.3);
            /* Background color with transparency */
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            margin-top: 50px;
            padding: 20px;
              /* background-color: #fff; */
            background-color: rgba(255, 255, 255, 0.5);
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-register {
            background-color: #337ab7;
            color: #fff;
        }
        
        label{
        color: black;}
        
    </style>
</head>
<body>
    <div class="container">
        <h2 style= color:black;font-weight:bold;>Admin Registration</h2>
        <form action="AddAdmin" method="post">
            <div class="form-group">
                <label for="adminName">Admin Name:</label>
                <input type="text" class="form-control" id="adminName" name="adminName" required>
            </div>
            <div class="form-group">
                <label for="adminEmail">Admin Email:</label>
                <input type="email" class="form-control" id="adminEmail" name="adminEmail" required>
            </div>
            <div class="form-group">
                <label for="adminPass">Admin Password:</label>
                <input type="password" class="form-control" id="adminPass" name="adminPass" required>
            </div>
            <button type="submit" class="btn btn-primary btn-register">Register</button>
        </form>
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
