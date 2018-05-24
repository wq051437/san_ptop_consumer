package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/22.
 */
public class QyManagerBean implements Serializable {
    private static final long serialVersionUID = -6937586393511800526L;
    private Integer qyid;//企业id
    private String qyname;//企业名称
    private String dobusiness;//营业执照/社会信用代码
    private String lxrname;//联系人名称
    private String sfyxinvest;//是否允许投资
    private Integer userid;//用户ID
    private String qypaytaxesnum;//企业纳税号
    private String zzjgdm;//组织机构代码
    private String zcyear;//注册年份
    private String industry;//行业
    private Double zcfund;//注册基金
    private String qyfr;//法人
    private Integer qyscale;//企业规模
    private String fridcard;//法人身份证号
    private Double zcnetworth;//资产净值
    private String dkcertificate;//贷款证书编号
    private Double profit;//上年度经营现金流入
    private String frphone;//法人手机号码
    private String xycertificate;//企业信用证书编号

    public String getQypaytaxesnum() {
        return qypaytaxesnum;
    }

    public void setQypaytaxesnum(String qypaytaxesnum) {
        this.qypaytaxesnum = qypaytaxesnum;
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

    public String getQyfr() {
        return qyfr;
    }

    public void setQyfr(String qyfr) {
        this.qyfr = qyfr;
    }

    public Integer getQyscale() {
        return qyscale;
    }

    public void setQyscale(Integer qyscale) {
        this.qyscale = qyscale;
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

    public String getDkcertificate() {
        return dkcertificate;
    }

    public void setDkcertificate(String dkcertificate) {
        this.dkcertificate = dkcertificate;
    }

    public Double getProfit() {
        return profit;
    }

    public void setProfit(Double profit) {
        this.profit = profit;
    }

    public String getFrphone() {
        return frphone;
    }

    public void setFrphone(String frphone) {
        this.frphone = frphone;
    }

    public String getXycertificate() {
        return xycertificate;
    }

    public void setXycertificate(String xycertificate) {
        this.xycertificate = xycertificate;
    }

    public Integer getQyid() {
        return qyid;
    }

    public void setQyid(Integer qyid) {
        this.qyid = qyid;
    }

    public String getQyname() {
        return qyname;
    }

    public void setQyname(String qyname) {
        this.qyname = qyname;
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

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "QyManagerBean{" +
                "qyid=" + qyid +
                ", qyname='" + qyname + '\'' +
                ", dobusiness='" + dobusiness + '\'' +
                ", lxrname='" + lxrname + '\'' +
                ", sfyxinvest='" + sfyxinvest + '\'' +
                ", userid=" + userid +
                ", qypaytaxesnum='" + qypaytaxesnum + '\'' +
                ", zzjgdm='" + zzjgdm + '\'' +
                ", zcyear='" + zcyear + '\'' +
                ", industry='" + industry + '\'' +
                ", zcfund=" + zcfund +
                ", qyfr='" + qyfr + '\'' +
                ", qyscale=" + qyscale +
                ", fridcard='" + fridcard + '\'' +
                ", zcnetworth=" + zcnetworth +
                ", dkcertificate='" + dkcertificate + '\'' +
                ", profit=" + profit +
                ", frphone='" + frphone + '\'' +
                ", xycertificate='" + xycertificate + '\'' +
                '}';
    }

    public QyManagerBean(Integer qyid, String qyname, String dobusiness, String lxrname, String sfyxinvest, Integer userid, String qypaytaxesnum, String zzjgdm, String zcyear, String industry, Double zcfund, String qyfr, Integer qyscale, String fridcard, Double zcnetworth, String dkcertificate, Double profit, String frphone, String xycertificate) {
        this.qyid = qyid;
        this.qyname = qyname;
        this.dobusiness = dobusiness;
        this.lxrname = lxrname;
        this.sfyxinvest = sfyxinvest;
        this.userid = userid;
        this.qypaytaxesnum = qypaytaxesnum;
        this.zzjgdm = zzjgdm;
        this.zcyear = zcyear;
        this.industry = industry;
        this.zcfund = zcfund;
        this.qyfr = qyfr;
        this.qyscale = qyscale;
        this.fridcard = fridcard;
        this.zcnetworth = zcnetworth;
        this.dkcertificate = dkcertificate;
        this.profit = profit;
        this.frphone = frphone;
        this.xycertificate = xycertificate;
    }

    public QyManagerBean() {

    }
}
