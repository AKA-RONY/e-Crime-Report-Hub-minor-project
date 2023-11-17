package com.ecrh.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quickFIRServlet")
public class QuickFir extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public QuickFir() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve data from the form
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
            String query = "INSERT INTO quick_fir_reports ( name, emergency_contact, category, description, when_occured_date, when_occurred_time, where_occured_location,FIR_REPORT_DATE) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
//            ps.setString(1, fir_id);
            ps.setString(1, name);
            ps.setString(2, emergencyContact);
            ps.setString(3, category);
            ps.setString(4, description);
            ps.setString(5, whenOccurredDate);
            ps.setString(6, whenOccurredTime);
            ps.setString(7, whereOccurredLocation);
            
            
            
         // Set the registration_date to the current timestamp
            Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
            ps.setTimestamp(8, currentTimestamp);
            

            // Execute the query
            int rowsAffected = ps.executeUpdate();

            // Close the database connection
            con.close();

            if (rowsAffected > 0) {
                // Data was successfully inserted
                response.sendRedirect("QFIR_success.jsp");
            } else {
                // Insertion failed
                response.sendRedirect("QFIR_error.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle database and other exceptions
            response.sendRedirect("QFIR_error.jsp");
        }
    }

 
    }




