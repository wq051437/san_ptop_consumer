package com.jk.model;

import java.io.Serializable;

/**
 * Created by 微星 on 2018/5/28.
 */
public class Capital implements Serializable{


    private static final long serialVersionUID = -2855379125346271738L;
    private Integer capitalid;                //资金ID
    private String capitalname;               //用户账户
    private Double capitalmoney;             //账户余额
    private Integer userid;                  //关联用户表

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
        return "Capital{" +
                "capitalid=" + capitalid +
                ", capitalname='" + capitalname + '\'' +
                ", capitalmoney=" + capitalmoney +
                ", userid=" + userid +
                '}';
    }
}
