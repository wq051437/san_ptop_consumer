package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/22.
 */
public class JgManagerBean implements Serializable {
    private static final long serialVersionUID = 3816653354859716791L;
    private Integer jgid;//机构ID
    private String jgname;//机构名称
    private String dobusiness;//营业执照/社会信用代码
    private String lxrname;//联系人名称
    private String sfyxinvest;//是否允许投资
    private String sfyxbuy;//是否允许购买不良债权
    private Integer userid;//用户ID

    public Integer getJgid() {
        return jgid;
    }

    public void setJgid(Integer jgid) {
        this.jgid = jgid;
    }

    public String getJgname() {
        return jgname;
    }

    public void setJgname(String jgname) {
        this.jgname = jgname;
    }

    public String getDobusiness() {
        return dobusiness;
    }

    public void setDobusiness(String dobusiness) {
        this.dobusiness = dobusiness;
    }

    public String getLxrname() {
        return lxrname;
    }

    public void setLxrname(String lxrname) {
        this.lxrname = lxrname;
    }

    public String getSfyxinvest() {
        return sfyxinvest;
    }

    public void setSfyxinvest(String sfyxinvest) {
        this.sfyxinvest = sfyxinvest;
    }

    public String getSfyxbuy() {
        return sfyxbuy;
    }

    public void setSfyxbuy(String sfyxbuy) {
        this.sfyxbuy = sfyxbuy;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "JgManagerBean{" +
                "jgid=" + jgid +
                ", jgname='" + jgname + '\'' +
                ", dobusiness='" + dobusiness + '\'' +
                ", lxrname='" + lxrname + '\'' +
                ", sfyxinvest='" + sfyxinvest + '\'' +
                ", sfyxbuy='" + sfyxbuy + '\'' +
                ", userid=" + userid +
                '}';
    }

    public JgManagerBean(Integer jgid, String jgname, String dobusiness, String lxrname, String sfyxinvest, String sfyxbuy, Integer userid) {
        this.jgid = jgid;
        this.jgname = jgname;
        this.dobusiness = dobusiness;
        this.lxrname = lxrname;
        this.sfyxinvest = sfyxinvest;
        this.sfyxbuy = sfyxbuy;
        this.userid = userid;
    }
    public JgManagerBean() {

    }
}
