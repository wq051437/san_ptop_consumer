package com.jk.util;

//生成六位验证码的类
public class RandomNum {
       private String random =(int) ((Math.random()*9+1)*100000)+"";
       public static String num;
       public String getRandom(){
    	   return random;
       }
}
