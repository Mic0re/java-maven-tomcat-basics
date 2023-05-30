<%--
  Created by IntelliJ IDEA.
  User: max
  Date: 24.05.2023
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= request.getParameter("fileName") %></title>
</head>
<body>
    <div><b>This is not an image file, this is html!</b></div>
    <div><img src="http://localhost:8080/file/<%= request.getParameter("fileName") %>"></div>
</body>
</html>
