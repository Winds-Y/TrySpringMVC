package com.example.Util;

import java.io.*;

public class ImageUtil {
    public static FileInputStream readImage(String path) throws FileNotFoundException {
        return new FileInputStream(new File(path));
    }
    public static void buff2image(byte[]b,String tagSrc) throws Exception {
        FileOutputStream fout=new FileOutputStream(tagSrc);
        fout.write(b);
        fout.close();
    }
    public static byte[] image2Bytes(String imgSrc) throws Exception {
        FileInputStream fin=new FileInputStream(new File(imgSrc));
        byte[]bytes=new byte[fin.available()];
        fin.read(bytes);
        fin.close();
        return bytes;
    }
    public static void readBin2Image(InputStream in,String targetPath){
        File file=new File(targetPath);
        String path=targetPath.substring(0,targetPath.lastIndexOf("/"));
        if(!file.exists()){
            new File(path).mkdir();
        }
        FileOutputStream fos=null;
        try {
            fos=new FileOutputStream(file);
            int len=0;
            byte[]buf=new byte[1024];
            while((len=in.read(buf))!=-1){
                fos.write(buf,0,len);
            }
            fos.flush();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(null!=fos){
                try {
                    fos.close();
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }
    }
}
