package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/6/5.
 */
public class InvestRecord implements Serializable{
    private static final long serialVersionUID = 1889241123076791309L;
    private Integer investrecordid;//投资记录ID
    private Double investrecordmaney;//投资记录资金
    private Integer userid;//用户ID
    private Integer investid;//项目ID
    private String investrecordtime;//投资时间

    public Integer getInvestrecordid() {
        return investrecordid;
    }

    public void setInvestrecordid(Integer investrecordid) {
        this.investrecordid = investrecordid;
    }

    public Double getInvestrecordmaney() {
        return investrecordmaney;
    }

    public void setInvestrecordmaney(Double investrecordmaney) {
        this.investrecordmaney = investrecordmaney;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getInvestid() {
        return investid;
    }

    public void setInvestid(Integer investid) {
        this.investid = investid;
    }

    public String getInvestrecordtime() {
        return investrecordtime;
    }

    public void setInvestrecordtime(String investrecordtime) {
        this.investrecordtime = investrecordtime;
    }

    @Override
    public String toString() {
        return "InvestRecord{" +
                "investrecordid=" + investrecordid +
                ", investrecordmaney=" + investrecordmaney +
                ", userid=" + userid +
                ", investid=" + investid +
                ", investrecordtime='" + investrecordtime + '\'' +
                '}';
    }

    public InvestRecord(Integer investrecordid, Double investrecordmaney, Integer userid, Integer investid, String investrecordtime) {
        this.investrecordid = investrecordid;
        this.investrecordmaney = investrecordmaney;
        this.userid = userid;
        this.investid = investid;
        this.investrecordtime = investrecordtime;
    }

    public InvestRecord() {

    }
}
