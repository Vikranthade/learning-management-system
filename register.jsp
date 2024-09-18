<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <style>
    body{
    	background: linear-gradient(45deg, #8b5aed 0%, #78ebfc 100%);
    	min-height: 100vh;
    }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <form action="registerAction.jsp" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>
            <button type="submit">Register</button>
        </form>
         <div class="register-link">
            <p>Have an account? <a href="login.jsp">Login here</a></p>
            <p>Wanna back home..? <a href="student_dashboard.jsp">Click here</a></p>
        </div>
    </div>
</body>
</html>
