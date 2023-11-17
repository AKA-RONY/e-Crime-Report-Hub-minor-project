
package com.ecrh.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Register() {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
        PrintWriter out = response.getWriter();
        String myname = request.getParameter("name");
        String myemail = request.getParameter("email");
        String mypass = request.getParameter("password");
        String myphone = request.getParameter("phone");
        String mydob = request.getParameter("dob");
        String myaddress = request.getParameter("address");
        String mydoctype = request.getParameter("document_type");
        String mydocdetails = request.getParameter("document_details");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecrh", "root", "rony");
            PreparedStatement ps = con.prepareStatement(
                    "insert into users (name, email, password, phone, dob, address, document_type, document_details, registration_date) values(?,?,?,?,?,?,?,?,?)",
                    PreparedStatement.RETURN_GENERATED_KEYS);

            ps.setString(1, myname);
            ps.setString(2, myemail);
            ps.setString(3, mypass);
            ps.setString(4, myphone);
            ps.setString(5, mydob);
            ps.setString(6, myaddress);
            ps.setString(7, mydoctype);
            ps.setString(8, mydocdetails);

            // Set the registration_date to the current timestamp
            Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
            ps.setTimestamp(9, currentTimestamp);

            int count = ps.executeUpdate();

            if (count > 0) {
                // Registration was successful, so retrieve the auto-generated user_id
                java.sql.ResultSet generatedKeys = ps.getGeneratedKeys();
                if (generatedKeys.next()) {
                    int generatedId = generatedKeys.getInt(1);
                    response.setContentType("text/html");
                    out.print("<h3>User registered successfully with ID: " + generatedId + "</h3>");
                }
                RequestDispatcher rd = request.getRequestDispatcher("/registration_success.jsp");
                rd.forward(request, response);
            } else {
                // Registration was not successful, do not display user_id
                RequestDispatcher rd = request.getRequestDispatcher("/registration_error.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();

            response.setContentType("text/html");
            out.print("<h3>Exception Occurred: " + e.getMessage() + " </h3>");
            RequestDispatcher rd = request.getRequestDispatcher("/registration_error.jsp");
            rd.forward(request, response);
        }

    }
}







