package com.ecrh.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddAdmin")
public class AddAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddAdmin() {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String myname = request.getParameter("adminName"); // Updated parameter name
        String myemail = request.getParameter("adminEmail"); // Updated parameter name
        String mypass = request.getParameter("adminPass"); // Updated parameter name

        
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO admins (admin_name, email, password) VALUES (?, ?, ?)",
                    PreparedStatement.RETURN_GENERATED_KEYS);

            ps.setString(1, myname);
            ps.setString(2, myemail);
            ps.setString(3, mypass);

            int count = ps.executeUpdate();

            if (count > 0) {
                // Registration was successful, so retrieve the auto-generated admin_id
                java.sql.ResultSet generatedKeys = ps.getGeneratedKeys();
                if (generatedKeys.next()) {
                    int generatedId = generatedKeys.getInt(1);
                    response.setContentType("text/html");
                    out.print("<h3>Admin registered successfully with ID: " + generatedId + "</h3>");
                }
                RequestDispatcher rd = request.getRequestDispatcher("/admin_added_success.jsp");
                rd.forward(request, response);
            } else {
                // Registration was not successful, do not display admin_id
                RequestDispatcher rd = request.getRequestDispatcher("/admin_added_failed.jsp");
                rd.forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();

            response.setContentType("text/html");
            out.print("<h3>Exception Occurred: " + e.getMessage() + " </h3>");
            RequestDispatcher rd = request.getRequestDispatcher("/admin_added_failed.jsp");
            rd.forward(request, response);
        }
    }
}
