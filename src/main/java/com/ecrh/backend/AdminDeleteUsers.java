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

@WebServlet("/AdminDeleteUsers")
public class AdminDeleteUsers extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AdminDeleteUsers() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = request.getParameter("userId");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");

            String deleteQuery = "DELETE FROM users WHERE user_id = ?";
            PreparedStatement ps = con.prepareStatement(deleteQuery);

            ps.setString(1, userId);

            int count = ps.executeUpdate();

            if (count > 0) {
                // Deletion successful
                response.sendRedirect("USER_DELETED_SUCCESS.jsp");
            } else {
                // Deletion failed
                response.sendRedirect("USER_DELETED_FAILED.jsp");
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("USER_DELETED_FAILED.jsp");
        }
    }
}

