package com.jk.model;

import java.io.Serializable;

/**
 * Created by ASUS on 2018/5/17.
 */
public class GrManagerBean implements Serializable {
    private static final long serialVersionUID = -5294456430491919233L;
    private Integer grid;//个人ID
    private String grname;//姓名
    private String gridcard;//身份证号
    private Integer userid;//用户ID
    private String grphoto;//头像

    public String getGrphoto() {
        return grphoto;
    }

    public void setGrphoto(String grphoto) {
        this.grphoto = grphoto;
    }

    public Integer getGrid() {
        return grid;
    }

    public void setGrid(Integer grid) {
        this.grid = grid;
    }

    public String getGrname() {
        return grname;
    }

    public void setGrname(String grname) {
        this.grname = grname;
    }

    public String getGridcard() {
        return gridcard;
    }

    public void setGridcard(String gridcard) {
        this.gridcard = gridcard;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "GrManagerBean{" +
                "grid=" + grid +
                ", grname='" + grname + '\'' +
                ", gridcard='" + gridcard + '\'' +
                ", userid=" + userid +
                ", grphoto='" + grphoto + '\'' +
                '}';
    }

    public GrManagerBean(Integer grid, String grname, String gridcard, Integer userid, String grphoto) {
        this.grid = grid;
        this.grname = grname;
        this.gridcard = gridcard;
        this.userid = userid;
        this.grphoto = grphoto;
    }
    public GrManagerBean() {

    }
}
