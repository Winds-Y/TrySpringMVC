package com.example.svt;

import com.example.controler.DBConn;
import org.springframework.web.servlet.handler.UserRoleAuthorizationInterceptor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ServletLogout",urlPatterns = "/ServletLogout")
public class ServletLogout extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username").toString();
        String password=request.getParameter("password").toString();
        System.out.println("ServeletLogout："+ username);
        System.out.println("ServeletLogout："+ password);
        DBConn dbConn=new DBConn();
        String sql="delete * from where username=? and password=?";
        try {
            dbConn.setSql(sql);
            dbConn.cbsetString(1,username);
            dbConn.cbsetString(2,password);
            dbConn.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
