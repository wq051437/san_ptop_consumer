package com.jk.model;

import java.io.Serializable;

/**
 * Created by 微星 on 2018/5/25.
 */
public class Recharge implements Serializable{


    private static final long serialVersionUID = 4893762404366548069L;
    private Integer rechargeid;                   //充值ID
    private Integer rechargenumber;              //线上充值订单号
    private Integer userid;                       //用户名关联
    private Double rechargemoney;                //充值金额
    private Double receivable;                   //应收手续费
    private Double received;                     //实收手续费
    private String finishdate;                   //充值时间
    private String paycompany;                  //支付公司名称
    private Integer rechargestate;              //充值状态
    private Integer serialnumber;               //流水单号

    private String username;//业务用户名


    public Integer getRechargeid() {
        return rechargeid;
    }

    public void setRechargeid(Integer rechargeid) {
        this.rechargeid = rechargeid;
    }

    public Integer getRechargenumber() {
        return rechargenumber;
    }

    public void setRechargenumber(Integer rechargenumber) {
        this.rechargenumber = rechargenumber;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Double getRechargemoney() {
        return rechargemoney;
    }

    public void setRechargemoney(Double rechargemoney) {
        this.rechargemoney = rechargemoney;
    }

    public Double getReceivable() {
        return receivable;
    }

    public void setReceivable(Double receivable) {
        this.receivable = receivable;
    }

    public Double getReceived() {
        return received;
    }

    public void setReceived(Double received) {
        this.received = received;
    }

    public String getFinishdate() {
        return finishdate;
    }

    public void setFinishdate(String finishdate) {
        this.finishdate = finishdate;
    }

    public String getPaycompany() {
        return paycompany;
    }

    public void setPaycompany(String paycompany) {
        this.paycompany = paycompany;
    }

    public Integer getRechargestate() {
        return rechargestate;
    }

    public void setRechargestate(Integer rechargestate) {
        this.rechargestate = rechargestate;
    }

    public Integer getSerialnumber() {
        return serialnumber;
    }

    public void setSerialnumber(Integer serialnumber) {
        this.serialnumber = serialnumber;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Recharge{" +
                "rechargeid=" + rechargeid +
                ", rechargenumber=" + rechargenumber +
                ", userid=" + userid +
                ", rechargemoney=" + rechargemoney +
                ", receivable=" + receivable +
                ", received=" + received +
                ", finishdate='" + finishdate + '\'' +
                ", paycompany='" + paycompany + '\'' +
                ", rechargestate=" + rechargestate +
                ", serialnumber=" + serialnumber +
                ", username='" + username + '\'' +
                '}';
    }
}
