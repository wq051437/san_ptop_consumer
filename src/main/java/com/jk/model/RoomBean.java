package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/29.
 */
public class RoomBean implements Serializable {
    private static final long serialVersionUID = -1892219936898777217L;
    private Integer roomid;//房产ID
    private String quartersname;//小区名称
    private Integer squaremeter;//建筑面积
    private Double roomprice;//购买价格
    private String roomaddress;//地址
    private Integer userid;//用户ID

    public Integer getRoomid() {
        return roomid;
    }

    public void setRoomid(Integer roomid) {
        this.roomid = roomid;
    }

    public String getQuartersname() {
        return quartersname;
    }

    public void setQuartersname(String quartersname) {
        this.quartersname = quartersname;
    }

    public Integer getSquaremeter() {
        return squaremeter;
    }

    public void setSquaremeter(Integer squaremeter) {
        this.squaremeter = squaremeter;
    }

    public Double getRoomprice() {
        return roomprice;
    }

    public void setRoomprice(Double roomprice) {
        this.roomprice = roomprice;
    }

    public String getRoomaddress() {
        return roomaddress;
    }

    public void setRoomaddress(String roomaddress) {
        this.roomaddress = roomaddress;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "RoomBean{" +
                "roomid=" + roomid +
                ", quartersname='" + quartersname + '\'' +
                ", squaremeter=" + squaremeter +
                ", roomprice=" + roomprice +
                ", roomaddress='" + roomaddress + '\'' +
                ", userid=" + userid +
                '}';
    }

    public RoomBean(Integer roomid, String quartersname, Integer squaremeter, Double roomprice, String roomaddress, Integer userid) {
        this.roomid = roomid;
        this.quartersname = quartersname;
        this.squaremeter = squaremeter;
        this.roomprice = roomprice;
        this.roomaddress = roomaddress;
        this.userid = userid;
    }
    public RoomBean() {

    }
}
