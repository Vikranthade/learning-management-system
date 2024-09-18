<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet questions = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms_db", "root", "Sknb@51241"); // Update with your DB credentials
        stmt = conn.createStatement();
        questions = stmt.executeQuery("SELECT q.id, q.title, q.content, u.username FROM questions q JOIN users u ON q.user_id = u.id ORDER BY q.created_at DESC LIMIT 10");

%>
<div class="latest-questions">
    <% while (questions.next()) { %>
        <div class="question">
            <h3><%= questions.getString("title") %></h3>
            <p><%= questions.getString("content") %></p>
            <span>Asked by: <%= questions.getString("username") %></span>
            <a href="answerQuestion.jsp?questionId=<%= questions.getInt("id") %>">Answer</a>
        </div>
    <% } %>
</div>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (questions != null) try { questions.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
