<%--
  Created by IntelliJ IDEA.
  User: m.ulvi
  Date: 08-Jul-21
  Time: 02:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Basket</title>
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
%>
<%
    if (defaultUserID > 0 && username != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("desc")){
                response.getWriter().write( cookie.getValue()+"<br>");
            } else if (cookie.getName().equals("count")){
                response.getWriter().write( cookie.getValue()+"<br>");
            }
        }
    }
%>
</body>
</html>
