<%@ page import="com.example.Util.ImageUtil" %><%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/13
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>存贮图片字节流</title>
</head>
<body>
    <%
        String path="G:\\MVP\\Picture\\wallpaper\\cbcb.jpg";
        byte[]b1= ImageUtil.image2Bytes(path);
        ImageUtil.buff2image(b1,"d:\\test.jpg");
    %>
hello world
</body>
</html>
