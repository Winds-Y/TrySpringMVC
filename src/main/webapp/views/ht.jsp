<%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/11
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息管理系统</title>
</head>
<link rel="stylesheet" type="text/css" href="../static/css/yeti_bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/css/background.css">
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="navbar-brand" href="#">Yangtse</a>
        <button class="navbar-toggler" aria-expanded="false" aria-controls="navbarColor01" aria-label="Toggle navigation" type="button" data-toggle="collapse" data-target="#navbarColor01">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" target="myframe" href="/views/register.jsp">用户注册<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" target="myframe" href="/views/showLogin.jsp">用户登陆</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" target="myframe" href="/views/showUserinfo.jsp">当前用户</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" target="myframe" href="/views/showLogout.jsp">用户退出</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search">
                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <div class="homepage-hero-module">

        <div class="video-container">
        <!-- <div class="cont">
            <input type="text" />
        </div>
        <div class="cont" style="display: none;">
            音乐
        </div>
        <div class="cont" style="display: none;">
            天坛
        </div> -->
        <div class="filter">
            <iframe src="/views/register.jsp" id="myframe" name="myframe" scrolling="no" allowtransparency="true"></iframe>
        </div>
        <video autoplay loop class="fillWidth">
            <source src="../static/video/Cloud_Surf/Cloud_Surf.mp4" type="video/mp4" />
        </video>
        <%--<div class="fillWidth">
            <img src="../static/video/Cloud_Surf/Cloud_Surf.jpg" alt="">
        </div>--%>
    </div>
    </div>

    <script type="text/javascript" src="../static/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../static/js/script_register.js"></script>
    <script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../static/js/background.js"></script>
</body>
</html>
