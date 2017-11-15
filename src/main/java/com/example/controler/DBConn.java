package com.example.controler;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConn {
    String driverName="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/javapersonwork?useSSL=false";
    String userName="root";
    String password="root";
    Connection con=null;
    PreparedStatement stmt=null;
    ResultSet rs=null;
    String sql;
    public DBConn(String sql) {
        try {
            Class.forName(driverName);
            con=(Connection) DriverManager.getConnection(url,userName,password);
            stmt=(PreparedStatement)con.prepareStatement(sql);
        }catch (ClassNotFoundException e) {
            // TODO: handle exception
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }
    public DBConn(){
        try {
            Class.forName(driverName);
            con=(Connection) DriverManager.getConnection(url,userName,password);
//            stmt=(PreparedStatement)con.prepareStatement(sql);
        }catch (ClassNotFoundException e) {
            // TODO: handle exception
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }
    public void setSql(String sql) throws SQLException {
        this.sql=sql;
        stmt= (PreparedStatement) con.prepareStatement(sql);
    }
    public void cbsetString(int index,String value) throws SQLException {
        stmt.setString(index,value);
    }
    public void cbsetInt(int index,int value) throws SQLException {
        stmt.setInt(index,value);
    }
    public void cbsetBinaryStream(int index, FileInputStream in) throws IOException, SQLException {
        //stmt.setBinaryStream(index,in);
        stmt.setBlob(index,in,in.available());
    }
    public ResultSet executeQuery() {
        try {
            rs=stmt.executeQuery();
        }catch (SQLException e) {
            // TODO: handle exception
            System.out.println("DBConn.executeQuery()");
            System.err.println("executeQuery发生异常："+e.getMessage());
            System.err.println("异常SQL语句："+sql);
        }
        return rs;
    }
    public int executeUpdate() {
        int rowCount=0;
        try {
            rowCount=stmt.executeUpdate();
        }catch (SQLException e) {
            // TODO: handle exception
            System.out.println("DBConn.executeUpdate()");
            System.err.println("executeUpdate发生异常："+e.getMessage());
            System.err.println("异常SQL语句："+sql);
        }
        return rowCount;
    }
    public void close() {
        try {
            if(rs!=null)rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }
}
