package com.jk.model;

import java.io.Serializable;

/**
 * Created by new鹏 on 2018/5/29.
 */
public class Online  implements Serializable {

    private static final long serialVersionUID = -8215981367797282624L;

     private  Integer   onlineid;   //线上id
     private  Integer   userid;     //借款人id
     private String     onlinetype;  //催款方式
    private   String    onlinetime;   //催款时间
    private  String     onlinetito;   //催款标题
    private  String     onlinetext;   //催款内容
    private   String    onlinename;   //催收人
    private   String    onlinemailbox;  //发送的邮箱
    private   String    onlinephoto;    //发送的手机号

    public String getOnlinemailbox() {
        return onlinemailbox;
    }

    public void setOnlinemailbox(String onlinemailbox) {
        this.onlinemailbox = onlinemailbox;
    }

    public String getOnlinephoto() {
        return onlinephoto;
    }

    public void setOnlinephoto(String onlinephoto) {
        this.onlinephoto = onlinephoto;
    }

    public String getOnlinename() {
        return onlinename;
    }

    public void setOnlinename(String onlinename) {
        this.onlinename = onlinename;
    }

    public Integer getOnlineid() {
        return onlineid;
    }

    public void setOnlineid(Integer onlineid) {
        this.onlineid = onlineid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getOnlinetype() {
        return onlinetype;
    }

    public void setOnlinetype(String onlinetype) {
        this.onlinetype = onlinetype;
    }

    public String getOnlinetime() {
        return onlinetime;
    }

    public void setOnlinetime(String onlinetime) {
        this.onlinetime = onlinetime;
    }

    public String getOnlinetito() {
        return onlinetito;
    }

    public void setOnlinetito(String onlinetito) {
        this.onlinetito = onlinetito;
    }


    public String getOnlinetext() {
        return onlinetext;
    }

    public void setOnlinetext(String onlinetext) {
        this.onlinetext = onlinetext;
    }


    @Override
    public String toString() {
        return "Online{" +
                "onlineid=" + onlineid +
                ", userid=" + userid +
                ", onlinetype='" + onlinetype + '\'' +
                ", onlinetime='" + onlinetime + '\'' +
                ", onlinetito='" + onlinetito + '\'' +
                ", onlinetext='" + onlinetext + '\'' +
                ", onlinename='" + onlinename + '\'' +
                ", onlinemailbox='" + onlinemailbox + '\'' +
                ", onlinephoto='" + onlinephoto + '\'' +
                '}';
    }
}
