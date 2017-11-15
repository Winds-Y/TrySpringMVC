<%@ page import="com.example.controler.DBConn" %>
<%@ page import="com.example.Util.Encoding" %><%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/15
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout yangtse</title>
</head>
<link rel="stylesheet" type="text/css" href="../static/css/yeti_bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../static/css/logout.css"/>
<body id="logoutbody">
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    username= Encoding.getStrs(username);
    password=Encoding.getStrs(password);
    System.out.println("logout,username："+username);
    System.out.println("logout,password："+password);
    String sql="select * from useronline where username=? and password=?";
    DBConn dbConn=new DBConn(sql);
    try {
        dbConn.cbsetString(1,username);
        dbConn.cbsetString(2,password);
        boolean isSuccessful=dbConn.executeQuery().next();
        if(isSuccessful){
            sql="delete from useronline where username=? and password=?";
            dbConn=new DBConn(sql);
            dbConn.cbsetString(1,username);
            dbConn.cbsetString(2,password);
            dbConn.executeUpdate();
        }
    }catch (Exception e){}

%>
    <div class="alert alert-dismissible alert-info" id="logoutinfo">
        <button class="close" type="button" data-dismiss="alert">&times;</button>
        <strong>Heads up!</strong> 注意 <a class="alert-link" href="#"><%=username%></a>, 您已经退出，请重新登陆.
    </div>
</body>
</html>
