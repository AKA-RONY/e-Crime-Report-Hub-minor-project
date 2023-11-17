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

@WebServlet("/AdminEditUserData")
public class AdminEditUserData extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AdminEditUserData() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String documentType = request.getParameter("documentType");
        String documentDetails = request.getParameter("documentDetails");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");

            String updateQuery = "UPDATE users SET name=?, email=?, password=?, phone=?, dob=?, address=?, document_type=?, document_details=? WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(updateQuery);

         
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setString(5, dob);
            ps.setString(6, address);
            ps.setString(7, documentType);
            ps.setString(8, documentDetails);
            ps.setString(9, userId);

            int count = ps.executeUpdate();

            if (count > 0) {
                // Update successful
                HttpSession session = request.getSession();
                session.removeAttribute(userId); // Clear session attribute for this FIR ID
                response.sendRedirect("user_update_success.jsp");
            } else {
                // Update failed
                response.sendRedirect("user_update_failed.jsp");
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("user_update_failed.jsp");
        }
    }
}

















