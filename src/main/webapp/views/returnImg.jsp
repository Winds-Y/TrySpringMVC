<%@ page import="com.example.controler.DBConn" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.InputStream" %><%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/15
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get iGmg</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    DBConn dbConn=new DBConn();
    ResultSet resultSet;
    InputStream db_headerstream;
    String sql="select * from userinfo where username=?";
    ServletOutputStream sout;
    byte[] buffer=new byte[4096];
    try {
        dbConn.setSql(sql);
        dbConn.cbsetString(1,username);
        resultSet=dbConn.executeQuery();
        while (resultSet.next()){
            db_headerstream= resultSet.getBinaryStream("header");
            sout=response.getOutputStream();
            int size=0;
            while ((size=db_headerstream.read(buffer))!=-1){
                sout.write(buffer,0,size);
            }
            sout.flush();
            sout.close();
        }
    }catch (Exception e){}
%>
</body>
</html>
