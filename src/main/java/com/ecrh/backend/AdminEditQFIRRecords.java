
package com.ecrh.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminEditQFIRRecords")
public class AdminEditQFIRRecords extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AdminEditQFIRRecords() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firId = request.getParameter("firId");
    
        String name = request.getParameter("name");
        String emergencyContact = request.getParameter("emergencyContact");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        String whenOccurredDate = request.getParameter("whenOccurredDate");
        String whenOccurredTime = request.getParameter("whenOccurredTime");
        String whereOccurredLocation = request.getParameter("whereOccurredLocation");
        String newFIRStatus = request.getParameter("newFIRStatus");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");

            String updateQuery = "UPDATE quick_fir_reports SET name=?, emergency_contact=?, category=?, description=?, when_occured_date=?, when_occurred_time=?, where_occured_location=?, FIR_status=? WHERE fir_id=?";
            PreparedStatement ps = con.prepareStatement(updateQuery);

           
            ps.setString(1, name);
            ps.setString(2, emergencyContact);
            ps.setString(3, category);
            ps.setString(4, description);
            ps.setString(5, whenOccurredDate);
            ps.setString(6, whenOccurredTime);
            ps.setString(7, whereOccurredLocation);
            ps.setString(8, newFIRStatus);
            ps.setString(9, firId);

            int count = ps.executeUpdate();

            if (count > 0) {
                // Update successful
                HttpSession session = request.getSession();
                session.removeAttribute(firId); // Clear session attribute for this FIR ID
                response.sendRedirect("fir_updated_success.jsp");
            } else {
                // Update failed
                response.sendRedirect("fir_updated_failed.jsp");
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("fir_updated_failed.jsp");
        }
    }
}

















