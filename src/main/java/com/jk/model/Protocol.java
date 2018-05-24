package com.jk.model;


import java.io.Serializable;

/**
 * Created by 周玉路 on 2018/5/16.
 */

public class Protocol implements Serializable {

    private static final long serialVersionUID = -6760098555810662123L;
    private Integer protocolid;
    private String protocolnumber;
    private Integer protectid;
    private String protectdate;
    private Integer protecttype;
    private Integer grid;
    private String startdate;
    private String enddate;

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public Integer getProtocolid() {
        return protocolid;
    }

    public void setProtocolid(Integer protocolid) {
        this.protocolid = protocolid;
    }

    public String getProtocolnumber() {
        return protocolnumber;
    }

    public void setProtocolnumber(String protocolnumber) {
        this.protocolnumber = protocolnumber;
    }

    public Integer getProtectid() {
        return protectid;
    }

    public void setProtectid(Integer protectid) {
        this.protectid = protectid;
    }

    public String getProtectdate() {
        return protectdate;
    }

    public void setProtectdate(String protectdate) {
        this.protectdate = protectdate;
    }

    public Integer getProtecttype() {
        return protecttype;
    }

    public void setProtecttype(Integer protecttype) {
        this.protecttype = protecttype;
    }

    public Integer getGrid() {
        return grid;
    }

    public void setGrid(Integer grid) {
        this.grid = grid;
    }

    @Override
    public String toString() {
        return "Protocol{" +
                "protocolid=" + protocolid +
                ", protocolnumber='" + protocolnumber + '\'' +
                ", protectid=" + protectid +
                ", protectdate='" + protectdate + '\'' +
                ", protecttype=" + protecttype +
                ", grid=" + grid +
                ", startdate='" + startdate + '\'' +
                ", enddate='" + enddate + '\'' +
                '}';
    }
}
