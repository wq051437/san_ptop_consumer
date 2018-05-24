package com.jk.model;

import java.io.Serializable;

/**
 * Created by 微星 on 2018/5/16.
 */
public class Personalloan implements Serializable{
    private static final long serialVersionUID = 8421048313276571522L;

    private Integer loanid;           //个人借款ID
    private String loanname;         //联系人名字
    private Long loanphone;       //联系人电话
    private Integer loanmoney;       //借款金额
    private Integer loanmonth;       //借款期限（月）
    private Integer loantypeid;      //借款类型
    private String loanadress;       //所在城市
    private String applyloandate;    //申请借款日期
    private Integer loandate;        //筹款日期  ---  XX天以内
    private String loandescribe;    //借款描述
    private Integer loanstate;       //状态  -------  1.已处理   2.未处理
    private String pusername;        //登陆人
    private String process;          //处理结果

    public Integer getLoanid() {
        return loanid;
    }

    public void setLoanid(Integer loanid) {
        this.loanid = loanid;
    }

    public String getLoanname() {
        return loanname;
    }

    public void setLoanname(String loanname) {
        this.loanname = loanname;
    }

    public Long getLoanphone() {
        return loanphone;
    }

    public void setLoanphone(Long loanphone) {
        this.loanphone = loanphone;
    }

    public Integer getLoanmoney() {
        return loanmoney;
    }

    public void setLoanmoney(Integer loanmoney) {
        this.loanmoney = loanmoney;
    }

    public Integer getLoanmonth() {
        return loanmonth;
    }

    public void setLoanmonth(Integer loanmonth) {
        this.loanmonth = loanmonth;
    }

    public Integer getLoantypeid() {
        return loantypeid;
    }

    public void setLoantypeid(Integer loantypeid) {
        this.loantypeid = loantypeid;
    }

    public String getLoanadress() {
        return loanadress;
    }

    public void setLoanadress(String loanadress) {
        this.loanadress = loanadress;
    }

    public String getApplyloandate() {
        return applyloandate;
    }

    public void setApplyloandate(String applyloandate) {
        this.applyloandate = applyloandate;
    }

    public Integer getLoandate() {
        return loandate;
    }

    public void setLoandate(Integer loandate) {
        this.loandate = loandate;
    }

    public String getLoandescribe() {
        return loandescribe;
    }

    public void setLoandescribe(String loandescribe) {
        this.loandescribe = loandescribe;
    }

    public Integer getLoanstate() {
        return loanstate;
    }

    public void setLoanstate(Integer loanstate) {
        this.loanstate = loanstate;
    }

    public String getPusername() {
        return pusername;
    }

    public void setPusername(String pusername) {
        this.pusername = pusername;
    }

    public String getProcess() {
        return process;
    }

    public void setProcess(String process) {
        this.process = process;
    }

    @Override
    public String toString() {
        return "Personalloan{" +
                "loanid=" + loanid +
                ", loanname='" + loanname + '\'' +
                ", loanphone=" + loanphone +
                ", loanmoney=" + loanmoney +
                ", loanmonth=" + loanmonth +
                ", loantypeid=" + loantypeid +
                ", loanadress='" + loanadress + '\'' +
                ", applyloandate='" + applyloandate + '\'' +
                ", loandate=" + loandate +
                ", loandescribe='" + loandescribe + '\'' +
                ", loanstate=" + loanstate +
                ", pusername='" + pusername + '\'' +
                ", process='" + process + '\'' +
                '}';
    }
}
