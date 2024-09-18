<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*" %>
<%
    String degree = request.getParameter("degree");

    if (degree != null && !degree.isEmpty()) {
        try {
            // register the driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // establish the connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Sknb@51241");

            // create a SQL statement
            PreparedStatement stmt = con.prepareStatement("SELECT course FROM enroll_for WHERE degree = ?");
            stmt.setString(1, degree);

            // execute the SQL statement
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                out.println("<option value='" + rs.getString("course") + "'>" + rs.getString("course") + "</option>");
            }

            // close the connection
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            out.println("<option value=''>Error loading courses</option>");
        }
    }
%>
