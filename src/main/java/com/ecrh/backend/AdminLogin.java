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

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AdminLogin() {
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
            PreparedStatement ps = con.prepareStatement("SELECT * FROM admins WHERE email = ? AND password = ?");
            ps.setString(1, myemail);
            ps.setString(2, mypass);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Valid login
               // HttpSession session = request.getSession();
                //session.setAttribute("session_username", rs.getString("admin_name"));
                //session.setAttribute("admin_email", rs.getString("email"));
               // session.setAttribute("user_role", "admin"); // Indicate this is an admin session
                response.sendRedirect("admin_homepage.jsp");
            } else {
                // Set an error message
                errorMessage = "Email and password do not match.";
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            errorMessage = "An error occurred while processing your request.";
        }

        if (errorMessage != null) {
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher rd = request.getRequestDispatcher("/admin_login.jsp");
            rd.forward(request, response);
        }
    }
}

