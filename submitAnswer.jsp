<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String content = request.getParameter("content");
    String questionId = request.getParameter("questionId");
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
        String sql = "INSERT INTO answers (question_id, user_id, content) VALUES (?, (SELECT id FROM users WHERE username = ?), ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(questionId));
        pstmt.setString(2, username);
        pstmt.setString(3, content);
        int result = pstmt.executeUpdate();

        if (result > 0) {
            out.println("<script>alert('Your answer was submitted.'); window.location.href='home3.jsp';</script>");
        } else {
            out.println("Error in submitting answer. Please try again.");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
