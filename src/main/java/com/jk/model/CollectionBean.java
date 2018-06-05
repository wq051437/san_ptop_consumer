package com.jk.model;

import java.io.Serializable;

/**
 * Created by new鹏 on 2018/5/28.
 */
public class CollectionBean   implements Serializable {
    private static final long serialVersionUID = 3393262233861547545L;


    private   Integer   collectionid ;//催收id
    private   String    userid;        //被催收id
    private    String   collectiontype;   //催收类型
    private   String     collectionname;   //催收人
    private   String      collectiontime;  //催收时间
    private   String      collectiontext;  //催收概括
  private     String      collectionline;   //线上或线下

    public String getCollectionline() {
        return collectionline;
    }

    public void setCollectionline(String collectionline) {
        this.collectionline = collectionline;
    }

    public Integer getCollectionid() {
        return collectionid;
    }

    public void setCollectionid(Integer collectionid) {
        this.collectionid = collectionid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getCollectiontype() {
        return collectiontype;
    }

    public void setCollectiontype(String collectiontype) {
        this.collectiontype = collectiontype;
    }

    public String getCollectionname() {
        return collectionname;
    }

    public void setCollectionname(String collectionname) {
        this.collectionname = collectionname;
    }

    public String getCollectiontime() {
        return collectiontime;
    }

    public void setCollectiontime(String collectiontime) {
        this.collectiontime = collectiontime;
    }

    public String getCollectiontext() {
        return collectiontext;
    }

    public void setCollectiontext(String collectiontext) {
        this.collectiontext = collectiontext;
    }

    @Override
    public String toString() {
        return "CollectionBean{" +
                "collectionid=" + collectionid +
                ", userid='" + userid + '\'' +
                ", collectiontype='" + collectiontype + '\'' +
                ", collectionname='" + collectionname + '\'' +
                ", collectiontime='" + collectiontime + '\'' +
                ", collectiontext='" + collectiontext + '\'' +
                ", collectionline='" + collectionline + '\'' +
                '}';
    }
}
