
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

@WebServlet("/AdminDeleteQFIRRecords")
public class AdminDeleteQFIRRecords extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AdminDeleteQFIRRecords() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firId = request.getParameter("firId");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");

            String deleteQuery = "DELETE FROM quick_fir_reports WHERE fir_id = ?";
            PreparedStatement ps = con.prepareStatement(deleteQuery);

            ps.setString(1, firId);

            int count = ps.executeUpdate();

            if (count > 0) {
                // Deletion successful
                response.sendRedirect("FIR_DELETED_SUCCESS.jsp");
            } else {
                // Deletion failed
                response.sendRedirect("FIR_DELETED_FAILED.jsp");
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("FIR_DELETED_FAILED.jsp");
        }
    }
}

