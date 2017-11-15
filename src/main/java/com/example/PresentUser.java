package com.example;

public class PresentUser {
    private static String username;
    private static String password;
    public static void set(String name,String pwd){
        PresentUser.username=name;
        PresentUser.password=pwd;
    }

    public static String getUsername() {
        return username;
    }

    public static String getPassword() {
        return password;
    }
}
