package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/29.
 */
public class CarBean implements Serializable {
    private static final long serialVersionUID = -5839660537221297736L;
    private Integer carid;//车产id
    private String carbrand;//汽车品牌
    private String carnum;//车牌号
    private String buycaryear;//购车年份
    private Double buyprice;//购买价格
    private Double assessmentprice;//评估价值
    private Integer userid;//用户id

    public Integer getCarid() {
        return carid;
    }

    public void setCarid(Integer carid) {
        this.carid = carid;
    }

    public String getCarbrand() {
        return carbrand;
    }

    public void setCarbrand(String carbrand) {
        this.carbrand = carbrand;
    }

    public String getCarnum() {
        return carnum;
    }

    public void setCarnum(String carnum) {
        this.carnum = carnum;
    }

    public String getBuycaryear() {
        return buycaryear;
    }

    public void setBuycaryear(String buycaryear) {
        this.buycaryear = buycaryear;
    }

    public Double getBuyprice() {
        return buyprice;
    }

    public void setBuyprice(Double buyprice) {
        this.buyprice = buyprice;
    }

    public Double getAssessmentprice() {
        return assessmentprice;
    }

    public void setAssessmentprice(Double assessmentprice) {
        this.assessmentprice = assessmentprice;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "CarBean{" +
                "carid=" + carid +
                ", carbrand='" + carbrand + '\'' +
                ", carnum='" + carnum + '\'' +
                ", buycaryear='" + buycaryear + '\'' +
                ", buyprice=" + buyprice +
                ", assessmentprice=" + assessmentprice +
                ", userid=" + userid +
                '}';
    }

    public CarBean(Integer carid, String carbrand, String carnum, String buycaryear, Double buyprice, Double assessmentprice, Integer userid) {
        this.carid = carid;
        this.carbrand = carbrand;
        this.carnum = carnum;
        this.buycaryear = buycaryear;
        this.buyprice = buyprice;
        this.assessmentprice = assessmentprice;
        this.userid = userid;
    }
    public CarBean() {

    }
}
