<%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/13
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>find servlet</title>
</head
    <%
        String outfile="d://header.jpg";
    %>
<body>
    <form action="RegisterServlets" method="post">
        <input name="username" type="text">
        <input type="submit" value="submit">
    </form>
    <img src=<%=outfile%>>
    <img src="static/pic/header.jpg">
</body>
</html>
