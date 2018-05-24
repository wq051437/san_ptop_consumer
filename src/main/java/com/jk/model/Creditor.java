package com.jk.model;

import java.io.Serializable;

/**
 * Created by 左小山 on 2018/5/16.
 */
public class Creditor implements Serializable{

    private static final long serialVersionUID = -3993844312463387002L;
    private Integer xuhaoid;            //ID
    private Integer biaoid;             //标ID
    private String jiekuantitle;       //借款标题
    private String annualinterestrate; //年化利率
    private String deadline;           //期限
    private Integer amountofclaim;      //持有债权金额
    private String investtime;         //投资时间
    private Integer claimid;            //债权id
    private Integer amountoforiginalclaim;//原始债权金额
    private String closingtime;        //结清时间
    private Integer claimcost;          //债权价值
    private Integer transferprice;      //转让价格
    private Integer claimtype;          //投资人类型

    private String startDate;//投资时间
    private String endDate;//结束时间

    private String username;//投资人


    @Override
    public String toString() {
        return "Creditor{" +
                "xuhaoid=" + xuhaoid +
                ", biaoid=" + biaoid +
                ", jiekuantitle='" + jiekuantitle + '\'' +
                ", annualinterestrate='" + annualinterestrate + '\'' +
                ", deadline='" + deadline + '\'' +
                ", amountofclaim=" + amountofclaim +
                ", investtime='" + investtime + '\'' +
                ", claimid=" + claimid +
                ", amountoforiginalclaim=" + amountoforiginalclaim +
                ", closingtime='" + closingtime + '\'' +
                ", claimcost=" + claimcost +
                ", transferprice=" + transferprice +
                ", claimtype=" + claimtype +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", username='" + username + '\'' +
                '}';
    }

    public Integer getXuhaoid() {
        return xuhaoid;
    }

    public void setXuhaoid(Integer xuhaoid) {
        this.xuhaoid = xuhaoid;
    }

    public Integer getBiaoid() {
        return biaoid;
    }

    public void setBiaoid(Integer biaoid) {
        this.biaoid = biaoid;
    }

    public String getJiekuantitle() {
        return jiekuantitle;
    }

    public void setJiekuantitle(String jiekuantitle) {
        this.jiekuantitle = jiekuantitle;
    }

    public String getAnnualinterestrate() {
        return annualinterestrate;
    }

    public void setAnnualinterestrate(String annualinterestrate) {
        this.annualinterestrate = annualinterestrate;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public Integer getAmountofclaim() {
        return amountofclaim;
    }

    public void setAmountofclaim(Integer amountofclaim) {
        this.amountofclaim = amountofclaim;
    }

    public String getInvesttime() {
        return investtime;
    }

    public void setInvesttime(String investtime) {
        this.investtime = investtime;
    }

    public Integer getClaimid() {
        return claimid;
    }

    public void setClaimid(Integer claimid) {
        this.claimid = claimid;
    }

    public Integer getAmountoforiginalclaim() {
        return amountoforiginalclaim;
    }

    public void setAmountoforiginalclaim(Integer amountoforiginalclaim) {
        this.amountoforiginalclaim = amountoforiginalclaim;
    }

    public String getClosingtime() {
        return closingtime;
    }

    public void setClosingtime(String closingtime) {
        this.closingtime = closingtime;
    }

    public Integer getClaimcost() {
        return claimcost;
    }

    public void setClaimcost(Integer claimcost) {
        this.claimcost = claimcost;
    }

    public Integer getTransferprice() {
        return transferprice;
    }

    public void setTransferprice(Integer transferprice) {
        this.transferprice = transferprice;
    }

    public Integer getClaimtype() {
        return claimtype;
    }

    public void setClaimtype(Integer claimtype) {
        this.claimtype = claimtype;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
