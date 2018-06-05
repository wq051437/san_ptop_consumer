package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/28.
 */
public class EducationBean implements Serializable {
    private static final long serialVersionUID = 8706457615931924455L;
    private Integer stuid;//学历ID
    private String finishschool;//毕业学校
    private String enrollmentyear;//入学年份
    private String finishyear;//毕业年份
    private String major;//专业
    private String schoolinfo;//在校情况简介
    private Integer userid;//用户ID

    public Integer getStuid() {
        return stuid;
    }

    public void setStuid(Integer stuid) {
        this.stuid = stuid;
    }

    public String getFinishschool() {
        return finishschool;
    }

    public void setFinishschool(String finishschool) {
        this.finishschool = finishschool;
    }

    public String getEnrollmentyear() {
        return enrollmentyear;
    }

    public void setEnrollmentyear(String enrollmentyear) {
        this.enrollmentyear = enrollmentyear;
    }

    public String getFinishyear() {
        return finishyear;
    }

    public void setFinishyear(String finishyear) {
        this.finishyear = finishyear;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getSchoolinfo() {
        return schoolinfo;
    }

    public void setSchoolinfo(String schoolinfo) {
        this.schoolinfo = schoolinfo;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "EducationBean{" +
                "stuid=" + stuid +
                ", finishschool='" + finishschool + '\'' +
                ", enrollmentyear='" + enrollmentyear + '\'' +
                ", finishyear='" + finishyear + '\'' +
                ", major='" + major + '\'' +
                ", schoolinfo='" + schoolinfo + '\'' +
                ", userid=" + userid +
                '}';
    }

    public EducationBean(Integer stuid, String finishschool, String enrollmentyear, String finishyear, String major, String schoolinfo, Integer userid) {
        this.stuid = stuid;
        this.finishschool = finishschool;
        this.enrollmentyear = enrollmentyear;
        this.finishyear = finishyear;
        this.major = major;
        this.schoolinfo = schoolinfo;
        this.userid = userid;
    }

    public EducationBean() {

    }
}
