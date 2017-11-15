<%@ page import="com.example.controler.DBConn" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.example.Util.ImageUtil" %><%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/13
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获得用户信息</title>
</head>
<body>
    <%
        String sql="select * from userinfo";
        DBConn conn=new DBConn(sql);
        ResultSet rs=conn.executeQuery();
        while(rs.next()){
            System.out.println(rs.getString("username"));
            System.out.println(rs.getString("password"));
            System.out.println(rs.getString("tele"));
            System.out.println(rs.getString("email"));
            System.out.println(rs.getString("gender"));
            byte[]bytes=rs.getBytes("header");
            ImageUtil.buff2image(bytes,"d:\\test.jpg");
        }
    %>
</body>
</html>
