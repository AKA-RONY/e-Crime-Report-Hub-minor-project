
package com.ecrh.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher; // Add this import
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MyComplaints")
public class MyComplaints extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve the user's email from the session
            HttpSession session = request.getSession();
            String userEmail = (String) session.getAttribute("user_email");

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");

            // Modify the SQL query to fetch data for the current user's email
            String query = "SELECT fir_id, description, FIR_status, FIR_REPORT_DATE FROM after_login_FIR WHERE user_email =  ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, userEmail);

            ResultSet rs = ps.executeQuery();

            List<Map<String, String>> complaints = new ArrayList<>();

            while (rs.next()) {
                Map<String, String> complaint = new HashMap<>();
                complaint.put("fir_id", rs.getString("fir_id"));
                complaint.put("description", rs.getString("description"));
                complaint.put("FIR_status", rs.getString("FIR_status"));
                complaint.put("FIR_REPORT_DATE", rs.getString("FIR_REPORT_DATE"));
                complaints.add(complaint);
            }

            request.setAttribute("complaints", complaints);

            // Forward the request to the JSP page "mycomplaints.jsp"
            RequestDispatcher dispatcher = request.getRequestDispatcher("/mycomplaints.jsp");
            dispatcher.forward(request, response);

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while accessing the database.");
        }
    }
}
