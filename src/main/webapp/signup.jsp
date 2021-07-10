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
    <title>Signup</title>
</head>
<body>
<form action="/create" method="post">
    Enter username <input type="text" name="username"> <br>
    Enter email <input type="email" name="email"><br>
    Enter password <input type="password" name="pass"><br>
    <input type="submit" value="Sign up">
</form>
</body>
</html>
