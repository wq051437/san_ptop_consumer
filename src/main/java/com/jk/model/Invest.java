package com.jk.model;

import java.io.Serializable;

/**
 * Created by 微星 on 2018/5/31.
 */
public class Invest implements Serializable{

    private static final long serialVersionUID = 3341412355451400044L;
    private Integer investid;             //投资ID
    private String investtitle;         //标题
    private Integer investtype;          //投资类型---1.担保   2.抵押    3.信用
    private Double investmoney;         //投资金额
    private Integer investrate;          //年化利率 --------(%)
    private Integer investterm;          //投款期限 -----（月）
    private Integer loantime;            //筹款期限---------（天）
    private Integer investpaytype;       //还款方式------1.等额本息     2.先息后本
    private String investfile;          //借款描述
    private String applyinvesttime;     //申请借款日期
    private Integer investstate;         //投资状态   1---已投资    2.未投资
    private String lendopinion;         //处理意见
    private Integer lendstate;           //处理意见状态  --------1.同意     2.不同意    3.发布    4.推广
    private String lendtime;            //处理时间
    private String investcondition;     //投资人条件
    private Integer userid;              //关联用户
    private Integer sort;                //排序字段

    public Integer getInvestid() {
        return investid;
    }

    public void setInvestid(Integer investid) {
        this.investid = investid;
    }

    public String getInvesttitle() {
        return investtitle;
    }

    public void setInvesttitle(String investtitle) {
        this.investtitle = investtitle;
    }

    public Integer getInvesttype() {
        return investtype;
    }

    public void setInvesttype(Integer investtype) {
        this.investtype = investtype;
    }

    public Double getInvestmoney() {
        return investmoney;
    }

    public void setInvestmoney(Double investmoney) {
        this.investmoney = investmoney;
    }

    public Integer getInvestrate() {
        return investrate;
    }

    public void setInvestrate(Integer investrate) {
        this.investrate = investrate;
    }

    public Integer getInvestterm() {
        return investterm;
    }

    public void setInvestterm(Integer investterm) {
        this.investterm = investterm;
    }

    public Integer getLoantime() {
        return loantime;
    }

    public void setLoantime(Integer loantime) {
        this.loantime = loantime;
    }

    public Integer getInvestpaytype() {
        return investpaytype;
    }

    public void setInvestpaytype(Integer investpaytype) {
        this.investpaytype = investpaytype;
    }

    public String getInvestfile() {
        return investfile;
    }

    public void setInvestfile(String investfile) {
        this.investfile = investfile;
    }

    public String getApplyinvesttime() {
        return applyinvesttime;
    }

    public void setApplyinvesttime(String applyinvesttime) {
        this.applyinvesttime = applyinvesttime;
    }

    public Integer getInveststate() {
        return investstate;
    }

    public void setInveststate(Integer investstate) {
        this.investstate = investstate;
    }

    public String getLendopinion() {
        return lendopinion;
    }

    public void setLendopinion(String lendopinion) {
        this.lendopinion = lendopinion;
    }

    public Integer getLendstate() {
        return lendstate;
    }

    public void setLendstate(Integer lendstate) {
        this.lendstate = lendstate;
    }

    public String getLendtime() {
        return lendtime;
    }

    public void setLendtime(String lendtime) {
        this.lendtime = lendtime;
    }

    public String getInvestcondition() {
        return investcondition;
    }

    public void setInvestcondition(String investcondition) {
        this.investcondition = investcondition;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    @Override
    public String toString() {
        return "Invest{" +
                "investid=" + investid +
                ", investtitle='" + investtitle + '\'' +
                ", investtype=" + investtype +
                ", investmoney=" + investmoney +
                ", investrate=" + investrate +
                ", investterm=" + investterm +
                ", loantime=" + loantime +
                ", investpaytype=" + investpaytype +
                ", investfile='" + investfile + '\'' +
                ", applyinvesttime='" + applyinvesttime + '\'' +
                ", investstate=" + investstate +
                ", lendopinion='" + lendopinion + '\'' +
                ", lendstate=" + lendstate +
                ", lendtime='" + lendtime + '\'' +
                ", investcondition='" + investcondition + '\'' +
                ", userid=" + userid +
                ", sort=" + sort +
                '}';
    }
}
