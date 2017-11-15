<%@ page import="com.example.controler.DBConn" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="com.example.Util.ImageUtil" %>
<%@ page import="com.mysql.jdbc.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.mysql.jdbc.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!</h2>
<%
    String sql="insert into userinfo (username,password,tele,email,gender,header) values(?,?,?,?,?,?)";
    DBConn dbConn=new DBConn(sql);
    String path="G:\\MVP\\Picture\\wallpaper\\cbcb.jpg";
    FileInputStream in= ImageUtil.readImage(path);
    try {
        dbConn.cbsetString(1,"cbcb");
        dbConn.cbsetString(2,"123456");
        dbConn.cbsetString(3,"18738983775");
        dbConn.cbsetString(4,"750qq.com");
        dbConn.cbsetString(5,"男");
        dbConn.cbsetBinaryStream(6,in);
        int cnt=dbConn.executeUpdate();
        dbConn.close();
        if(cnt>0){
            System.out.println("insert successfully"+cnt);
        }
        else{
            System.out.println("insert failed");
        }
    }catch (Exception e){

    }

%>
<%--<%--%>
    <%--String driverName="com.mysql.jdbc.Driver";--%>
    <%--String url="jdbc:mysql://localhost:3306/javapersonwork?useSSL=false";--%>
    <%--String userName="root";--%>
    <%--String password="root";--%>
    <%--try {--%>
        <%--Class.forName(driverName);--%>
        <%--Connection con=(Connection) DriverManager.getConnection(url,userName,password);--%>
        <%--String mysql="select * from city";--%>
        <%--String sqls="insert into userinfo (username,password)values(?,?)";--%>
        <%--ResultSet rs;--%>
        <%--PreparedStatement stmt = (PreparedStatement) con.prepareStatement(sqls);--%>
        <%--stmt.setString(1,"kj");--%>
        <%--stmt.setString(2,"23");--%>
        <%--int cnt=stmt.executeUpdate();--%>
        <%--System.out.println("cnt is :"+cnt);--%>
        <%--/*rs = stmt.executeQuery();--%>
        <%--while(rs.next()) {--%>
            <%--int id=rs.getInt("ID");--%>
            <%--String name=rs.getString("Name");--%>
            <%--String district=rs.getString("District");--%>
        <%--}*/--%>
        <%--con.close();--%>
    <%--} catch (Exception e) {--%>
        <%--// TODO: handle exception--%>
    <%--}--%>
</body>
</html>
