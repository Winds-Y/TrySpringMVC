<%@ page import="com.example.Util.Encoding" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="com.example.Util.ImageUtil" %>
<%@ page import="com.example.controler.DBConn" %><%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/12
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>try</title>
</head>
<body>
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
        email=Encoding.getStrs(email);
        String sql="insert into userinfo (username,password,tele,email,gender,header) values(?,?,?,?,?,?)";
        DBConn dbConn=new DBConn(sql);
        dbConn.cbsetString(1,username);
        dbConn.cbsetString(2,password);
        dbConn.cbsetString(3,tele);
        dbConn.cbsetString(4,email);
        dbConn.cbsetString(5,gender);
        dbConn.cbsetBinaryStream(6,headerstream);
        dbConn.executeUpdate();
    %>
    用户名：<%=username%><br>
    密码：<%=password%><br>
    性别：<%=gender%><br>
    头像：<%=header%><br>
    联系电话：<%=tele%><br>
    email:<%=email%><br>

<%--<jsp:forward page="ht.jsp"/>--%>
</body>
</html>
