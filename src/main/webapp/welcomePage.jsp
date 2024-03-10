<%--
  Created by IntelliJ IDEA.
  User: niaz
  Date: 3/10/2024
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String name = request.getParameter("name");
%>
<head>
    <title><%= "Welcome " + name + "!"%></title>
</head>
<body>
<h1><%= "Welcome " + name + "!"%>
</h1>
</body>
</html>
