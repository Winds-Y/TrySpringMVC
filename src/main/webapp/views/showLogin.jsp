<%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/13
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show login</title>
</head>
<link rel="stylesheet" type="text/css" href="../static/css/yeti_bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../static/css/style_login.css">
<body id="loginbody">
    <form id="loginform" action="userinfor.jsp" method="post" target="_self">
        <div id="myborder">
            <div class="innerdiv">
                <div class="badge badge-primary labels">用户名：</div>
                <input  class="inputs" type="text" name="username"/>
            </div>
            <div class="innerdiv">
                <div  class="badge badge-primary labels">密码：</div>
                <input class="inputs" type="password" name="password"/>
            </div>
        </div>
        <div id="btns">
            <input class="btn btn-outline-primary" style="height: 25px;line-height: 10px;margin-left: 80px;" type="submit"  value="登陆"/>
            <input style="height: 25px;line-height: 10px;" class="btn btn-outline-primary" type="reset" value="重置"/>
        </div>
    </form>
</body>
</html>
