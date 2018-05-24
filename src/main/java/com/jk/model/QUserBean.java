package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/16.
 */
public class QUserBean implements Serializable{
    private static final long serialVersionUID = -6020939690169972332L;
    private Integer userid;//用户ID
    private String username;//用户名
    private String userpass;//用户密码
    private String userphone;//用户手机号
    private String useremily;//用户邮箱
    private String userstate;//用户状态
    private String jobnumber;//业务员工号
    private String registersource;//注册来源
    private String registerdate;//注册时间
    private String usertype;//用户类型
    private String logintime;//登录时间
    private String lhcontent;//拉黑原因

    public String getLhcontent() {
        return lhcontent;
    }

    public void setLhcontent(String lhcontent) {
        this.lhcontent = lhcontent;
    }

    public String getLogintime() {
        return logintime;
    }

    public void setLogintime(String logintime) {
        this.logintime = logintime;
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

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUseremily() {
        return useremily;
    }

    public void setUseremily(String useremily) {
        this.useremily = useremily;
    }

    public String getUserstate() {
        return userstate;
    }

    public void setUserstate(String userstate) {
        this.userstate = userstate;
    }

    public String getJobnumber() {
        return jobnumber;
    }

    public void setJobnumber(String jobnumber) {
        this.jobnumber = jobnumber;
    }

    public String getRegistersource() {
        return registersource;
    }

    public void setRegistersource(String registersource) {
        this.registersource = registersource;
    }

    public String getRegisterdate() {
        return registerdate;
    }

    public void setRegisterdate(String registerdate) {
        this.registerdate = registerdate;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    @Override
    public String toString() {
        return "QUserBean{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", userpass='" + userpass + '\'' +
                ", userphone='" + userphone + '\'' +
                ", useremily='" + useremily + '\'' +
                ", userstate='" + userstate + '\'' +
                ", jobnumber='" + jobnumber + '\'' +
                ", registersource='" + registersource + '\'' +
                ", registerdate='" + registerdate + '\'' +
                ", usertype='" + usertype + '\'' +
                ", logintime='" + logintime + '\'' +
                ", lhcontent='" + lhcontent + '\'' +
                '}';
    }

    public QUserBean(Integer userid, String username, String userpass, String userphone, String useremily, String userstate, String jobnumber, String registersource, String registerdate, String usertype, String logintime, String lhcontent) {
        this.userid = userid;
        this.username = username;
        this.userpass = userpass;
        this.userphone = userphone;
        this.useremily = useremily;
        this.userstate = userstate;
        this.jobnumber = jobnumber;
        this.registersource = registersource;
        this.registerdate = registerdate;
        this.usertype = usertype;
        this.logintime = logintime;
        this.lhcontent = lhcontent;
    }

    public QUserBean() {

    }
}
