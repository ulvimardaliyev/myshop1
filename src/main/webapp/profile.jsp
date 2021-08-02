<%--
  Created by IntelliJ IDEA.
  User: m.ulvi
  Date: 09-Jul-21
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String username = null;
    if (session != null) {
        username = (String) session.getAttribute("username");
        //response.getWriter().write(session.getId());
    }
    if (username == null) {
        response.sendRedirect("login.jsp");
    }
    System.out.println("username is "+username);
%>


<p>Hi, <%=username %>
</p>
My sesson id is <%=request.getSession().getId()%>
<jsp:include page="home1.jsp"/>


</body>
</html>
