package com.jk.model;

import java.io.Serializable;

/**
 * Created by 微星 on 2018/5/16.
 */
public class Loantype implements Serializable{
    private static final long serialVersionUID = -6620895224934710449L;

    private Integer loantypeid;
    private String loantypename;

    public Integer getLoantypeid() {
        return loantypeid;
    }

    public void setLoantypeid(Integer loantypeid) {
        this.loantypeid = loantypeid;
    }

    public String getLoantypename() {
        return loantypename;
    }

    public void setLoantypename(String loantypename) {
        this.loantypename = loantypename;
    }

    @Override
    public String toString() {
        return "Loantype{" +
                "loantypeid=" + loantypeid +
                ", loantypename='" + loantypename + '\'' +
                '}';
    }
}
