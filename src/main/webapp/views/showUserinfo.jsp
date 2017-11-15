<%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/13
  Time: 11:42
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
    <title>show Userinfo yangtse</title>
    <%--<base href="<%=basePath%>">--%>
</head>
<link rel="stylesheet" type="text/css" href="../static/css/yeti_bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../static/css/style_main.css"/>
<body id="mybody">
    <form action="showLogout.jsp" method="post" target="_self">
        <table id="mytable" class="table table-striped table-hover table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>User infooption</th>
                    <th>Info datas</th>
                    <th>Who are U</th>
                </tr>
            </thead>
            <tbody>
                <tr class="trs">
                    <td>1</td>
                    <td>USER NAME</td>
                    <td></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="trs" id="trheader">
                    <td>2</td>
                    <td>HEADER</td>
                    <td></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-info trs">
                    <td>3</td>
                    <td>GENDER</td>
                    <td></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-success trs">
                    <td>4</td>
                    <td>TELE NUMBER</td>
                    <td></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-danger trs">
                    <td>5</td>
                    <td>EMAIL</td>
                    <td></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-warning trs">
                    <td>6</td>
                    <td>SYS TIME</td>
                    <td></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-active trs">
                    <td>7</td>
                    <td>WHAT'S UP</td>
                    <td></td>
                    <td>Yangtse Yeager</td>
                </tr>
            </tbody>
        </table>
        <input type="submit" style="margin-left: 300px;" class="btn btn-primary" value="退出登陆">
    </form>

    <script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
</body>
</html>
