package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/28.
 */
public class CapitalBean implements Serializable {
    private static final long serialVersionUID = -4038066437953598086L;
    private Integer capitalid;//资金表ID
    private String capitalname;//资金账号账户
    private Double capitalmoney;//账户金额
    private Integer userid;//关联个人信息

    public Integer getCapitalid() {
        return capitalid;
    }

    public void setCapitalid(Integer capitalid) {
        this.capitalid = capitalid;
    }

    public String getCapitalname() {
        return capitalname;
    }

    public void setCapitalname(String capitalname) {
        this.capitalname = capitalname;
    }

    public Double getCapitalmoney() {
        return capitalmoney;
    }

    public void setCapitalmoney(Double capitalmoney) {
        this.capitalmoney = capitalmoney;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "CapitalBean{" +
                "capitalid=" + capitalid +
                ", capitalname='" + capitalname + '\'' +
                ", capitalmoney=" + capitalmoney +
                ", userid=" + userid +
                '}';
    }

    public CapitalBean(Integer capitalid, String capitalname, Double capitalmoney, Integer userid) {
        this.capitalid = capitalid;
        this.capitalname = capitalname;
        this.capitalmoney = capitalmoney;
        this.userid = userid;
    }
    public CapitalBean() {

    }
}
