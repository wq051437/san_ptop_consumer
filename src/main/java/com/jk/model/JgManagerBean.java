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
    private String jgpaytaxesnum;//机构纳税号
    private String zzjgdm;//组织机构代码
    private String zcyear;//注册年份
    private String industry;//行业
    private Double zcfund;//注册基金
    private String jgfr;//机构法人
    private Integer jgscale;//机构规模
    private String fridcard;//法人身份证号
    private Double zcnetworth;//资产净值
    private String frphone;//法人手机号码
    private Double profit;//上年度经营现金流入
    private String jgreferral;//担保机构介绍
    private String qkdescription;//担保情况描述

    public String getJgpaytaxesnum() {
        return jgpaytaxesnum;
    }

    public void setJgpaytaxesnum(String jgpaytaxesnum) {
        this.jgpaytaxesnum = jgpaytaxesnum;
    }

    public String getZzjgdm() {
        return zzjgdm;
    }

    public void setZzjgdm(String zzjgdm) {
        this.zzjgdm = zzjgdm;
    }

    public String getZcyear() {
        return zcyear;
    }

    public void setZcyear(String zcyear) {
        this.zcyear = zcyear;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public Double getZcfund() {
        return zcfund;
    }

    public void setZcfund(Double zcfund) {
        this.zcfund = zcfund;
    }

    public String getJgfr() {
        return jgfr;
    }

    public void setJgfr(String jgfr) {
        this.jgfr = jgfr;
    }

    public Integer getJgscale() {
        return jgscale;
    }

    public void setJgscale(Integer jgscale) {
        this.jgscale = jgscale;
    }

    public String getFridcard() {
        return fridcard;
    }

    public void setFridcard(String fridcard) {
        this.fridcard = fridcard;
    }

    public Double getZcnetworth() {
        return zcnetworth;
    }

    public void setZcnetworth(Double zcnetworth) {
        this.zcnetworth = zcnetworth;
    }

    public String getFrphone() {
        return frphone;
    }

    public void setFrphone(String frphone) {
        this.frphone = frphone;
    }

    public Double getProfit() {
        return profit;
    }

    public void setProfit(Double profit) {
        this.profit = profit;
    }

    public String getJgreferral() {
        return jgreferral;
    }

    public void setJgreferral(String jgreferral) {
        this.jgreferral = jgreferral;
    }

    public String getQkdescription() {
        return qkdescription;
    }

    public void setQkdescription(String qkdescription) {
        this.qkdescription = qkdescription;
    }

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
                ", jgpaytaxesnum='" + jgpaytaxesnum + '\'' +
                ", zzjgdm='" + zzjgdm + '\'' +
                ", zcyear='" + zcyear + '\'' +
                ", industry='" + industry + '\'' +
                ", zcfund=" + zcfund +
                ", jgfr='" + jgfr + '\'' +
                ", jgscale=" + jgscale +
                ", fridcard='" + fridcard + '\'' +
                ", zcnetworth=" + zcnetworth +
                ", frphone='" + frphone + '\'' +
                ", profit=" + profit +
                ", jgreferral='" + jgreferral + '\'' +
                ", qkdescription='" + qkdescription + '\'' +
                '}';
    }

    public JgManagerBean(Integer jgid, String jgname, String dobusiness, String lxrname, String sfyxinvest, String sfyxbuy, Integer userid, String jgpaytaxesnum, String zzjgdm, String zcyear, String industry, Double zcfund, String jgfr, Integer jgscale, String fridcard, Double zcnetworth, String frphone, Double profit, String jgreferral, String qkdescription) {
        this.jgid = jgid;
        this.jgname = jgname;
        this.dobusiness = dobusiness;
        this.lxrname = lxrname;
        this.sfyxinvest = sfyxinvest;
        this.sfyxbuy = sfyxbuy;
        this.userid = userid;
        this.jgpaytaxesnum = jgpaytaxesnum;
        this.zzjgdm = zzjgdm;
        this.zcyear = zcyear;
        this.industry = industry;
        this.zcfund = zcfund;
        this.jgfr = jgfr;
        this.jgscale = jgscale;
        this.fridcard = fridcard;
        this.zcnetworth = zcnetworth;
        this.frphone = frphone;
        this.profit = profit;
        this.jgreferral = jgreferral;
        this.qkdescription = qkdescription;
    }

    public JgManagerBean() {

    }
}
