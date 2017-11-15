<%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/11
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"
            +request.getServerName()+":"+request.getServerPort()
            +path+"/";
%>
<html>
<head>
    <title>用户注册</title>
    <%--<base href="<%=basePath%>">--%>
</head>
<link rel="stylesheet" type="text/css" href="../static/css/yeti_bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/css/register.css"/>

<body id="register_body">
    <form id="registerform" action="login.jsp" method="post" target="_self">
        <fieldset>
            <legend style="color: gray;">UserInfo</legend>
            <div class="form-group">
                <label for="exampleInputEmail1" style="color: white;font-size: 14px">用户名</label>
                <input name="username" class="form-control" id="exampleInputEmail1" type="text" placeholder="Enter username">
                <p style="color: white;" class="form-text text-muted" id="emailHelp">
                    We'll  share your username with your friends.
                </p>
            </div>
            <div class="form-group">
                <label  style="color: white;font-size: 14px">密码</label>
                <input name="password" class="form-control exampleInputPassword1" type="password" placeholder="Password">
            </div>
            <div class="form-group">
                <label  style="color: white;font-size: 14px">确认密码</label>
                <input name="confirmpassword" class="form-control exampleInputPassword1"  type="password" placeholder="ConfirmPassword">
            </div>
            <fieldset class="form-group">
                <legend style="color: white; font-size: 14px;">性别</legend>
                <div style="margin-top: -30px; margin-left: 50px;">
                    <label class="form-check-label" style="color: white;font-size: 14px;">
                        <input name="optionsRadios" class="form-check-input" id="optionsRadios1" type="radio" checked="checked" value="option1">男
                    </label>
                    <label class="form-check-label" style="color: white;font-size: 14px;">
                        <input name="optionsRadios" class="form-check-input" id="optionsRadios2" type="radio" value="option2">女
                    </label>
                </div>
            </fieldset>
            <div class="form-group">
                <label style="color: white;font-size: 14px;">选择头像</label>
                <input  style=" background:rgba(0,0,0,0);margin-top: -20px;margin-left: 20px;" type="file" id="test-image-file" name="header">
                <img id="test-image-preview" src=""/>
                <!-- <p id="test-file-info" class="form-text text-muted"></p> -->
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1" style="color: white;font-size: 14px; margin-top:-10px;">联系电话</label>
                <input name="tele" style="color: #1d9ce5" class="form-control exampleInputTel"  aria-describedby="emailHelp" type="tel" placeholder="Enter phone number">
                <small class="form-text text-muted emailHelp" >We'll never share your number with anyone else.</small>
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1" style="color: white;font-size: 14px">电子邮箱</label>
                <input name="email" style="color: #1d9ce5" class="form-control exampleInputEmail1" aria-describedby="emailHelp" type="email" placeholder="Enter email">
                <small class="form-text text-muted emailHelp">We'll never share your email with anyone else.</small>
            </div>
            <button class="btn btn-primary" type="submit">Submit</button>
        </fieldset>
    </form>
    <script type="text/javascript" src="../static/js/jquery.min.js"></script>
    <script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../static/js/register.js"></script>
</body>
</html>
