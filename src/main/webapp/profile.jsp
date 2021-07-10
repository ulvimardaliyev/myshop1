<%--
  Created by IntelliJ IDEA.
  User: m.ulvi
  Date: 09-Jul-21
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="home.jsp"/>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String username = null;
    Cookie cookie1[] = request.getCookies();
    HttpSession session1 = request.getSession(false);

    for (Cookie c : cookie1) {
        if (c.getName().equals("JSESSIONID")) {
            if (session1.getId().equals(c.getValue())) {
                username = (String) session1.getAttribute("username");
            }
        }
    }
    if (username == null) {
        response.sendRedirect("/login.jsp");
    }
%>

<%--
isleyen code
<%
    String username = null;
    Cookie cookie1[] = request.getCookies();
    HttpSession session1 = request.getSession(false);


    for (Cookie c : cookie1) {
        if (c.getName().equals("JSESSIONID")) {
            if (session1.getId().equals(c.getValue())) {
                username = (String) session1.getAttribute("username");
            }
        }
    }
    if (username == null) {
        response.sendRedirect("/login.jsp");
    }
%>--%>

<p>Hi, <%=username %>
</p>
</body>
</html>
