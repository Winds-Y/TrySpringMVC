<%@ page import="com.example.controler.DBConn" %>
<%@ page import="com.example.Util.Encoding" %>
<%@ page import="com.example.Util.ImageUtil" %>
<%@ page import="java.io.FileInputStream" %><%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/11
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登陆</title>
</head>
<link rel="stylesheet" type="text/css" href="../static/css/yeti_bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../static/css/style_login.css">
<body id="loginbody">
<%
    String username=request.getParameter("username");
    username= Encoding.getStrs(username);
    String password=request.getParameter("password");
    password=Encoding.getStrs(password);
    String confirmpassword=request.getParameter("confirmpassword");
    confirmpassword=Encoding.getStrs(confirmpassword);
    String gender=request.getParameter("optionsRadios");
    gender=Encoding.getStrs(gender);
    if("option1".equals(gender)){
        gender="男";
    }else{
        gender="女";
    }
    String header=request.getParameter("header");
    header=Encoding.getStrs(header);
    FileInputStream headerstream= ImageUtil.readImage(header);
    String tele=request.getParameter("tele");
    tele=Encoding.getStrs(tele);
    String email=request.getParameter("email");
    email= Encoding.getStrs(email);
    String serchsql="select * from userinfo where username=?";
    String sql="insert into userinfo (username,password,tele,email,gender,header) values(?,?,?,?,?,?)";
    DBConn dbConn=new DBConn();
    dbConn.setSql(serchsql);
    dbConn.cbsetString(1,username);
    boolean serch=dbConn.executeQuery().next();
    if(!serch){
        try {
            dbConn.setSql(sql);
            dbConn.cbsetString(1,username);
            dbConn.cbsetString(2,password);
            dbConn.cbsetString(3,tele);
            dbConn.cbsetString(4,email);
            dbConn.cbsetString(5,gender);
            dbConn.cbsetBinaryStream(6,headerstream);
            dbConn.executeUpdate();
        }catch (Exception e){}
    }
%>
    <form id="loginform" action="/views/userinfor.jsp" method="post" target="_self">
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
