package com.ecrh.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String myemail = request.getParameter("email");
        String mypass = request.getParameter("password");
        String errorMessage = null; // Initialize an error message

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");
            PreparedStatement ps = con.prepareStatement("select * from users where email = ? and password = ?");
            ps.setString(1, myemail);
            ps.setString(2, mypass);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("session_username", rs.getString("name"));
                session.setAttribute("user_email", rs.getString("email")); // Store the user_email in the session
               // session.setAttribute("user_role", "user"); // Indicate this is a user session
                // Redirect to the after_login page
                response.sendRedirect("after_login.jsp");
            } else {
                // Set an error message
                errorMessage = "Email and password do not match.";
            }
        } catch (Exception e) {
            e.printStackTrace();

            // Set an error message for exceptions
            errorMessage = "An error occurred while processing your request.";
        }

        // If there is an error message, forward to the login page with the error message
        if (errorMessage != null) {
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
        }
    }
}


