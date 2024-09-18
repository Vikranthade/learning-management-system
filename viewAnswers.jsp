<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String questionId = request.getParameter("questionId");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet answers = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms_db", "root", "Sknb@51241"); // Update with your DB credentials
        String sql = "SELECT a.content, u.username FROM answers a JOIN users u ON a.user_id = u.id WHERE a.question_id = ? ORDER BY a.created_at DESC";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(questionId));
        answers = pstmt.executeQuery();

%>
<div class="answers">
    <% while (answers.next()) { %>
        <div class="answer">
            <p><%= answers.getString("content") %></p>
            <span>Answered by: <%= answers.getString("username") %></span>
        </div>
    <% } %>
</div>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (answers != null) try { answers.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
