<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String username = (String) session.getAttribute("username");
if (username == null) {
    response.sendRedirect("login.jsp");
    return;
}
    Connection conn = null;
    Statement stmt = null;
    ResultSet questions = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms_db", "root", "Sknb@51241"); // Update with your DB credentials
        stmt = conn.createStatement();
        questions = stmt.executeQuery("SELECT q.id, q.title, q.content, u.username FROM questions q JOIN users u ON q.user_id = u.id ORDER BY q.created_at DESC");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Community Questions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(45deg, #8b5aed 0%, #78ebfc 100%);
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            min-height: 100vh; /* Ensure full viewport height */
        }

        .container {
            width: 80%;
            max-width: 1200px;
            height: 70vh;
            padding: 20px;
            background: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .top-container {
            margin-bottom: 20px;
        }

        .welcome {
            text-align: center;
            margin-bottom: 20px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            display: flex;
            justify-content: center;
            margin: 0;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #8b5aed;
            padding: 10px 20px;
            background: #f0f0f0;
            border-radius: 5px;
            transition: background 0.3s;
        }

        nav ul li a:hover {
            background: #8b5aed;
            	color : #f0f0f0;
            
        }

        .questions {
            flex-grow: 1;
            overflow-y: auto;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .question {
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }

        .question:last-child {
            border-bottom: none;
        }

        .question h3 {
            margin: 0;
            font-size: 1.2em;
            color: #333;
        }

        .question p {
            margin: 10px 0;
            color: #666;
        }

        .question span {
            display: block;
            margin-bottom: 10px;
            font-size: 0.9em;
            color: #999;
        }

        .question a {
            text-decoration: none;
            color: #8b5aed;
            background: #f0f0f0;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .question a:hover {
            background: #d0d0d0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="top-container">
            <div class="welcome">
                <h2>Welcome, <%= username %></h2>
            </div>
            <nav>
                <ul>
                <li><a href="home2.jsp">Home</a></li>
                    <li><a href="yourQuestions.jsp">Your Questions</a></li>
                    <li><a href="askQuestion.jsp">Ask a Question</a></li>
                    <li><a href="communityQuestions.jsp">Community Questions</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </nav>
        </div>
        <h2>Community Questions</h2>
        <div class="questions">
            <% while (questions.next()) { %>
                <div class="question">
                    <h3><%= questions.getString("title") %></h3>
                    <p><%= questions.getString("content") %></p>
                    <span>Asked by: <%= questions.getString("username") %></span>
                    <a href="answerQuestion.jsp?questionId=<%= questions.getInt("id") %>">Answer</a>
                </div>
            <% } %>
        </div>
    </div>
</body>
</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (questions != null) try { questions.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
