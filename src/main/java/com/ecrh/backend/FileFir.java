package com.ecrh.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FileFIR")
public class FileFir extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public FileFir() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the form
        String userEmail = request.getParameter("userEmail");
        String name = request.getParameter("name");
        String emergencyContact = request.getParameter("emergencyContact");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        String whenOccurredDate = request.getParameter("date");
        String whenOccurredTime = request.getParameter("whenOccurredTime");
        String whereOccurredLocation = request.getParameter("location");

        try {
            // Create a database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");

            // Prepare and execute the SQL query to insert FIR data
            String query = "INSERT INTO after_login_FIR (user_email, name, emergency_contact, category, description, when_occured_date, when_occurred_time, where_occured_location, FIR_REPORT_DATE) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, userEmail);
            ps.setString(2, name);
            ps.setString(3, emergencyContact);
            ps.setString(4, category);
            ps.setString(5, description);
            ps.setString(6, whenOccurredDate);
            ps.setString(7, whenOccurredTime);
            ps.setString(8, whereOccurredLocation);
            
            
         // Set the registration_date to the current timestamp
            Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
            ps.setTimestamp(9, currentTimestamp);

            // Execute the query
            int rowsAffected = ps.executeUpdate();

            // Close the database connection
            con.close();

            if (rowsAffected > 0) {
                // Data was successfully inserted
                response.sendRedirect("normal_FIR_success.jsp");
            } else {
                // Insertion failed
                response.sendRedirect("normal_FIR_error.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle database and other exceptions
            response.sendRedirect("normal_FIR_error.jsp");
        }
    }
}

