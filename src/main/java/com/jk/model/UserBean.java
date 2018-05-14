package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/14.
 */
public class UserBean implements Serializable{

    private Integer userid;
    private String username;
    private String userpass;
    private String useradree;

    public UserBean(Integer userid, String username, String userpass, String useradree) {
        this.userid = userid;
        this.username = username;
        this.userpass = userpass;
        this.useradree = useradree;
    }
    public UserBean() {
    }

    @Override
    public String toString() {
        return "UserBean{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", userpass='" + userpass + '\'' +
                ", useradree='" + useradree + '\'' +
                '}';
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
