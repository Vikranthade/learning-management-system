<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String questionId = request.getParameter("questionId");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Answer Question</title>
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <style>
    body{
    	background: linear-gradient(45deg, #8b5aed 0%, #78ebfc 100%);
    }
    </style>
</head>
<body>
    <div class="container">
        <h2>Answer Question</h2>
        <form action="submitAnswer.jsp" method="post">
            <input type="hidden" name="questionId" value="<%= questionId %>">
            <label for="content">Your Answer</label>
            <textarea id="content" name="content" required></textarea>
            <button type="submit">Post Answer</button>
        </form>
    </div>
</body>
</html>
