<%@ page import="com.example.controler.DBConn" %>
<%@ page import="com.example.Util.Encoding" %>
<%@ page import="org.omg.CORBA.Request" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="com.example.Util.ImageUtil" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="com.example.PresentUser" %><%--
  Created by IntelliJ IDEA.
  User: Yangtse
  Date: 2017/11/11
  Time: 18:55
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
    <title>登陆成功</title>
    <%--<base href="<%=basePath%>">--%>
</head>
<link rel="stylesheet" type="text/css" href="../static/css/yeti_bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../static/css/style_main.css"/>
<body id="mybody">
<%

//    String outfile="d://header.jpg";
    String webappPath=new File(application.getRealPath(request.getRequestURI())).getParent();
    String newpath=webappPath.substring(0,28);
    System.out.println(newpath);
    System.out.println("getContextPath:"+webappPath);
    String outfile=newpath+"static/pic/header.jpg".replaceAll("/","\\\\");
    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String time=df.format(new Date());

    String username=request.getParameter("username");
    username= Encoding.getStrs(username);
    String password=request.getParameter("password");
    password= Encoding.getStrs(password);
    PresentUser.set(username,password);

    request.setAttribute("username",username);
    request.setAttribute("password",password);

    String db_username=null,db_password=null,db_tele=null,db_email=null,db_gender=null;
    InputStream db_headerstream;
    String sql="select * from userinfo where username=?";
    DBConn dbConn=new DBConn();
    ResultSet rs=null;
    String isSuccessful="default";
    try {
        dbConn.setSql(sql);
        dbConn.cbsetString(1,username);
        rs=dbConn.executeQuery();
        while(rs.next()){
            db_username=rs.getString("username");
            db_password=rs.getString("password");
            if(db_password.equals(password))isSuccessful="success";
            else {
                isSuccessful="passwordwrong";
                request.setAttribute("isSuccessful",isSuccessful);
                request.getRequestDispatcher("errorLogin.jsp").forward(request,response);
            }
            db_tele=rs.getString("tele");
            db_email= rs.getString("email");
            db_gender=rs.getString("gender");
            db_headerstream= rs.getBinaryStream("header");
            byte[]bytes=new byte[db_headerstream.available()];

            File file=new File(outfile);
            FileOutputStream fos;
            if(!file.exists()){
                file.createNewFile();
            }
            fos=new FileOutputStream(file);
            byte[]buffer=new byte[4096];
            int size=0;
            while((size=db_headerstream.read(buffer))!=-1){
                fos.write(buffer,0,size);
            }
//        ImageUtil.buff2image(bytes,outfile);
            //(username,password,tele,email,gender,header)
            fos.close();
            /*ServletOutputStream outputStream = response.getOutputStream();
            byte[] bytes1=new byte[4096];
            while((size=db_headerstream.read(bytes1))!=-1){
                outputStream.write(bytes1,0,size);
            }
            outputStream.close();*/
        }
    }catch (Exception e){

    }
    if(isSuccessful.equals("default")){
        request.setAttribute("isSuccessful",isSuccessful);
        request.getRequestDispatcher("errorLogin.jsp").forward(request,response);
    }else if(isSuccessful.equals("success")){
        String serachsql="select * from useronline where username=?";
        String loginsql="insert into useronline (username,password) values(?,?)";
        try {
            dbConn.setSql(serachsql);
            dbConn.cbsetString(1,username);
            boolean serchIssuccessful=dbConn.executeQuery().next();
            if(!serchIssuccessful){
                dbConn.setSql(loginsql);
                dbConn.cbsetString(1,username);
                dbConn.cbsetString(2,password);
                dbConn.executeUpdate();
            }
        }catch (Exception e){

        }
    }
    dbConn.close();

%>
    <form action="/views/logout.jsp" method="post" target="_self">
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
                    <td><%=db_username%></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="trs" id="trheader">
                    <td>2</td>
                    <td>HEADER</td>
                    <td><img id="test-image-preview" style="height: 50px;width: 60px;" src="returnImg.jsp?username=<%=username%>" ></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-info trs">
                    <td>3</td>
                    <td>GENDER</td>
                    <td><%=db_gender%></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-success trs">
                    <td>4</td>
                    <td>TELE NUMBER</td>
                    <td><%=db_tele%></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-danger trs">
                    <td>5</td>
                    <td>EMAIL</td>
                    <td><%=db_email%></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-warning trs">
                    <td>6</td>
                    <td>SYS TIME</td>
                    <td><%=time%></td>
                    <td>Yangtse Yeager</td>
                </tr>
                <tr class="table-active trs">
                    <td>7</td>
                    <td>WHAT'S UP</td>
                    <td>haha</td>
                    <td>Yangtse Yeager</td>
                </tr>
            </tbody>
        </table>
        <input name="username" style="display: none;" value=<%=username%>>
        <input name="password" style="display: none;" value=<%=password%>>
        <input type="submit" style="margin-left: 300px;" class="btn btn-primary" value="退出登陆">
    </form>
    <script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
</body>
</html>
