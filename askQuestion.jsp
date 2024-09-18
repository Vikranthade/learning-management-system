<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Ask a Question</title>
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <style>
    body{
    	background: linear-gradient(45deg, #8b5aed 0%, #78ebfc 100%);
    }
    </style>
</head>
<body>
    <div class="container">
        <h2>Ask a Question</h2>
        <form action="submitQuestion.jsp" method="post">
            <label for="title">Title</label>
            <input type="text" id="title" name="title" required>
            <label for="content">Content</label>
            <textarea id="content" name="content" required></textarea>
            <button type="submit">Post Question</button>
        </form>
    </div>
</body>
</html>
