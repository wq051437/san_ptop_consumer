package com.jk.model;

import java.io.Serializable;

/**
 * Created by 宁晓波 on 2018/5/23.
 */
public class Companyloan implements Serializable{


    private static final long serialVersionUID = -7327495008611048836L;
    private Integer companyid;      //公司借款ID
    private String loantitle;       //借款标题
    private String companyname;     //企业名称
    private String registration;     //公司注册号
    private String contactname;     //联系人
    private long companyphone;       //手机号
    private Double loanmoney;      //借款金额
    private Integer loanrate;       //利率（%）
    private Integer loandate;        //借款期限
    private Integer loantype;       //借款类型
    private String companycity;     //公司所在城市
    private String companyadress;   //公司具体地址
    private String fundraisingtime; //筹款期限
    private String loandescribe;       //借款描述
    private String applytime;       //提交时间
    private Integer loanstate;      //状态
    private String loanresult;      //处理结果描述
    private String resultname;      //处理人
    private String resulttime;      //处理时间
    private Integer loanhandle;     //处理结果 -------1.同意   2.不同意
    private Integer lendstate;      //放款状态------- 1.已放款   2.未放款
    private Integer userid;         //关联用户表

    private String capitalname;      //关联账号名称


    public Integer getCompanyid() {
        return companyid;
    }

    public void setCompanyid(Integer companyid) {
        this.companyid = companyid;
    }

    public String getLoantitle() {
        return loantitle;
    }

    public void setLoantitle(String loantitle) {
        this.loantitle = loantitle;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getRegistration() {
        return registration;
    }

    public void setRegistration(String registration) {
        this.registration = registration;
    }

    public String getContactname() {
        return contactname;
    }

    public void setContactname(String contactname) {
        this.contactname = contactname;
    }

    public long getCompanyphone() {
        return companyphone;
    }

    public void setCompanyphone(long companyphone) {
        this.companyphone = companyphone;
    }

    public Double getLoanmoney() {
        return loanmoney;
    }

    public void setLoanmoney(Double loanmoney) {
        this.loanmoney = loanmoney;
    }

    public Integer getLoanrate() {
        return loanrate;
    }

    public void setLoanrate(Integer loanrate) {
        this.loanrate = loanrate;
    }

    public Integer getLoandate() {
        return loandate;
    }

    public void setLoandate(Integer loandate) {
        this.loandate = loandate;
    }

    public Integer getLoantype() {
        return loantype;
    }

    public void setLoantype(Integer loantype) {
        this.loantype = loantype;
    }

    public String getCompanycity() {
        return companycity;
    }

    public void setCompanycity(String companycity) {
        this.companycity = companycity;
    }

    public String getCompanyadress() {
        return companyadress;
    }

    public void setCompanyadress(String companyadress) {
        this.companyadress = companyadress;
    }

    public String getFundraisingtime() {
        return fundraisingtime;
    }

    public void setFundraisingtime(String fundraisingtime) {
        this.fundraisingtime = fundraisingtime;
    }

    public String getLoandescribe() {
        return loandescribe;
    }

    public void setLoandescribe(String loandescribe) {
        this.loandescribe = loandescribe;
    }

    public String getApplytime() {
        return applytime;
    }

    public void setApplytime(String applytime) {
        this.applytime = applytime;
    }

    public Integer getLoanstate() {
        return loanstate;
    }

    public void setLoanstate(Integer loanstate) {
        this.loanstate = loanstate;
    }

    public String getLoanresult() {
        return loanresult;
    }

    public void setLoanresult(String loanresult) {
        this.loanresult = loanresult;
    }

    public String getResultname() {
        return resultname;
    }

    public void setResultname(String resultname) {
        this.resultname = resultname;
    }

    public String getResulttime() {
        return resulttime;
    }

    public void setResulttime(String resulttime) {
        this.resulttime = resulttime;
    }

    public Integer getLoanhandle() {
        return loanhandle;
    }

    public void setLoanhandle(Integer loanhandle) {
        this.loanhandle = loanhandle;
    }

    public Integer getLendstate() {
        return lendstate;
    }

    public void setLendstate(Integer lendstate) {
        this.lendstate = lendstate;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getCapitalname() {
        return capitalname;
    }

    public void setCapitalname(String capitalname) {
        this.capitalname = capitalname;
    }

    @Override
    public String toString() {
        return "Companyloan{" +
                "companyid=" + companyid +
                ", loantitle='" + loantitle + '\'' +
                ", companyname='" + companyname + '\'' +
                ", registration='" + registration + '\'' +
                ", contactname='" + contactname + '\'' +
                ", companyphone=" + companyphone +
                ", loanmoney=" + loanmoney +
                ", loanrate=" + loanrate +
                ", loandate=" + loandate +
                ", loantype=" + loantype +
                ", companycity='" + companycity + '\'' +
                ", companyadress='" + companyadress + '\'' +
                ", fundraisingtime='" + fundraisingtime + '\'' +
                ", loandescribe='" + loandescribe + '\'' +
                ", applytime='" + applytime + '\'' +
                ", loanstate=" + loanstate +
                ", loanresult='" + loanresult + '\'' +
                ", resultname='" + resultname + '\'' +
                ", resulttime='" + resulttime + '\'' +
                ", loanhandle=" + loanhandle +
                ", lendstate=" + lendstate +
                ", userid=" + userid +
                ", capitalname='" + capitalname + '\'' +
                '}';
    }
}
