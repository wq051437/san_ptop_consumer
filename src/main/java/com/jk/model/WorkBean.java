package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/28.
 */
public class WorkBean implements Serializable {
    private static final long serialVersionUID = -2514795207657569012L;
    private Integer workid;//工作ID
    private String workstate;//工作状态
    private String companyname;//单位名称
    private String positionname;//职位名称
    private String workaddress;//工作地址
    private Integer userid;//用户id

    public Integer getWorkid() {
        return workid;
    }

    public void setWorkid(Integer workid) {
        this.workid = workid;
    }

    public String getWorkstate() {
        return workstate;
    }

    public void setWorkstate(String workstate) {
        this.workstate = workstate;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getPositionname() {
        return positionname;
    }

    public void setPositionname(String positionname) {
        this.positionname = positionname;
    }

    public String getWorkaddress() {
        return workaddress;
    }

    public void setWorkaddress(String workaddress) {
        this.workaddress = workaddress;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "WorkBean{" +
                "workid=" + workid +
                ", workstate='" + workstate + '\'' +
                ", companyname='" + companyname + '\'' +
                ", positionname='" + positionname + '\'' +
                ", workaddress='" + workaddress + '\'' +
                ", userid=" + userid +
                '}';
    }

    public WorkBean(Integer workid, String workstate, String companyname, String positionname, String workaddress, Integer userid) {
        this.workid = workid;
        this.workstate = workstate;
        this.companyname = companyname;
        this.positionname = positionname;
        this.workaddress = workaddress;
        this.userid = userid;
    }
    public WorkBean() {

    }
}
