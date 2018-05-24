package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/14.
 */
public class UserBean implements Serializable{

    private static final long serialVersionUID = 5481909664418075877L;
    private Integer userid;
    private String username;
    private  String  userphone;
    private String userpass;
    private String useradree;

    @Override
    public String toString() {
        return "UserBean{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", userphone='" + userphone + '\'' +
                ", userpass='" + userpass + '\'' +
                ", useradree='" + useradree + '\'' +
                '}';
    }

    public UserBean() {
    }
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }
    public String getUseradree() {
        return useradree;
    }
    public void setUseradree(String useradree) {
        this.useradree = useradree;
    }
}
