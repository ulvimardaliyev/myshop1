<%--
  Created by IntelliJ IDEA.
  User: m.ulvi
  Date: 08-Jul-21
  Time: 02:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="/login" method="post">
    Enter email <input type="text" name="email"> <br>
    Enter password <input type="password" name="pass" >
    <input type="submit" value="Log in">
</form>

Or create account <a href="signup.jsp">Sign up</a>
</body>
</html>
