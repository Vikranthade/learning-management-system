<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms_db", "root", "Sknb@51241"); // Update with your DB credentials
        String sql = "INSERT INTO questions (user_id, title, content) VALUES ((SELECT id FROM users WHERE username = ?), ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, title);
        pstmt.setString(3, content);
        int result = pstmt.executeUpdate();

        if (result > 0) {
            out.println("<script>alert('Your question was submitted.'); window.location.href='home3.jsp';</script>");
        } else {
            out.println("Error in submitting question. Please try again.");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
