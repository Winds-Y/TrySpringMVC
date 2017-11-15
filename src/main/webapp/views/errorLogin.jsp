<%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/13
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login wrong page</title>
</head>
<link rel="stylesheet" type="text/css" href="../static/css/yeti_bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../static/css/logout.css"/>
<body id="logoutbody">
<%
    String noexist="账户不存在";
    String pwdwrong="密码错误";
    String isSuccessful= request.getAttribute("isSuccessful").toString();
    System.out.println("errorlogin;"+isSuccessful);
    if(isSuccessful.equals("default")){
%>
    <div class="alert alert-dismissible alert-info" id="logoutinfo">
        <button class="close" type="button" data-dismiss="alert">&times;</button>
        <strong>Heads up!</strong> 注意 <a class="alert-link" href="#"><%=noexist%></a>,请重新登陆.
    </div>
<%
    }else if(isSuccessful.equals("passwordwrong")){
%>
    <div class="alert alert-dismissible alert-info" id="logoutinfo">
        <button class="close" type="button" data-dismiss="alert">&times;</button>
        <strong>Heads up!</strong> 注意 <a class="alert-link" href="#"><%=pwdwrong%></a>, 请重新登陆.
    </div>
<%

    }
%>
</body>
</html>
