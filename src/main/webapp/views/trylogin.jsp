<%@ page import="com.example.Util.Encoding" %>
<%@ page import="com.example.controler.DBConn" %><%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/13
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆yangtse</title>
</head>
<body>
    <%
        String username=request.getParameter("username");
        username= Encoding.getStrs(username);
        String password=request.getParameter("password");
        password=Encoding.getStrs(password);
        String sql="select * from userinfo where username=? and password=?";
        DBConn dbConn=new DBConn(sql);
        dbConn.cbsetString(1,username);
        dbConn.cbsetString(2,password);
        boolean isSuccessful =dbConn.executeQuery().next();
        System.out.println("查询结果"+ isSuccessful);
    %>
username:<%=username%><br>
password:<%=password%><br>
查询结果：<%=isSuccessful%>
</body>
</html>
