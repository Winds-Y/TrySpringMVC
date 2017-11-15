package com.example.Util;

import java.io.UnsupportedEncodingException;

public class Encoding {
    public static String getStrs(String str){
        String st=null;
        try {
            byte[]bytes=str.getBytes("iso-8859-1");
            st=new String(bytes,"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return st;
    }
}
