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
<%
    int defaultUserID = 0;
    String username = null;
    Cookie[] cookies = request.getCookies();

    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("userIDOnDB")) {
            if (cookie.getValue() != null && !cookie.getValue().isEmpty()) {
                defaultUserID = Integer.parseInt(cookie.getValue());
            }
        } else if (cookie.getName().equals("username")) {
            username = cookie.getValue();
        }
    }

    if (defaultUserID > 0 && username != null) {
        response.sendRedirect("home1.jsp");
    }

%>
<form action="login" method="post">
    Enter email <input type="text" name="email"> <br>
    Enter password <input type="password" name="pass">
    <input type="submit" value="Log in">
</form>
Or create account <a href="signup.jsp">Sign up</a>
</body>
</html>
